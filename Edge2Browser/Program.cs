using System;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Windows.Forms;

namespace SearchWithMyBrowser
{
	class Edge2Browser
	{
		static void LaunchInternetURL(string URL, bool BypassCatch = false)
		{
			try
			{
				Process.Start(new ProcessStartInfo(){
					FileName = URL,
					UseShellExecute = true
				});
			}
			catch (Win32Exception exc)
			{
				if (exc.ErrorCode == -2147467259 && !BypassCatch) // https://support.microsoft.com/en-us/help/305703/how-to-start-the-default-internet-browser-programmatically-by-using-vi
				{
					var repairResult = MessageBox.Show(
						"It seems like your default browser is misconfigured.\n\nDo you want to open the Settings app to repair your default browser?",
						"SearchWithMyBrowser",
						MessageBoxButtons.YesNo,
						MessageBoxIcon.Exclamation
					);

					if (repairResult == DialogResult.Yes)
					{
						LaunchInternetURL("ms-settings:defaultapps", true); // Recursion!
					}
					else
					{
						var fallbackResult = MessageBox.Show(
							"Do you want to fallback to using Internet Explorer?",
							"SearchWithMyBrowser",
							MessageBoxButtons.YesNo,
							MessageBoxIcon.Question
						);

						if (fallbackResult == DialogResult.Yes)
						{
							Process.Start("iexplore.exe", URL);
						}
					}
					return;
				}
				throw;
			}
		}

		static void AutostartFCUHack()
		{
			string installLocation = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
			string hackPath = Path.Combine(installLocation, "SearchWithMyBrowserFCUHack.exe");

			if (File.Exists(hackPath) && Process.GetProcessesByName(hackPath).Length == 0)
				Process.Start(hackPath);
		}

		static void Main(string[] CommandLine)
		{
			AutostartFCUHack();

			if (CommandLine.Length == 0)
				MessageBox.Show("Do a web search with Cortana to benefit of SearchWithMyBrowser!\n\nOr maybe come back later, there might be something new here ;)", "SearchWithMyBrowser", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
			else if (CommandLine[0].StartsWith("microsoft-edge:", StringComparison.OrdinalIgnoreCase))
			{
				string LaunchURL = CommandLine[0].Substring(15); // Remove "microsoft-edge:"

				if (LaunchURL.StartsWith("?launchContext1=", StringComparison.OrdinalIgnoreCase)) // Handle FCU
				{
					var ProtocolParameters = HttpUtility.ParseQueryString(LaunchURL);
					LaunchURL = ProtocolParameters["url"];
				}

				if (LaunchURL.StartsWith("//"))
					LaunchURL = LaunchURL.Substring(2);

				if (!new string[] {"http://", "https://"}.Any(ValidProtocol => LaunchURL.StartsWith(ValidProtocol, StringComparison.OrdinalIgnoreCase)))
					LaunchURL = "http://" + LaunchURL; // If there isn't a valid URL prefix, add one to prevent launching an arbitrary exe. (Or someone calling the protocol like this: "microsoft-edge:google.com")

				if (Uri.IsWellFormedUriString(LaunchURL, UriKind.Absolute))
					LaunchInternetURL(LaunchURL);
				else
					throw new UriFormatException(); // When this happens, we can get a memory dump by WER containing the CommandLine array for further analysis and bugfixing.
			}
		}
	}
}