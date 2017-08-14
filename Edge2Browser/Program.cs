using System;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Windows.Forms;

namespace SearchWithMyBrowser
{
	class Edge2Browser
	{
		static void Main(string[] CommandLine)
		{
			if (CommandLine.Length == 0)
				MessageBox.Show("Do a web search with Cortana to benefit of SearchWithMyBrowser!\n\nOr maybe come back later, there might be something new here ;)", "SearchWithMyBrowser", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
			else if (CommandLine[0].StartsWith("microsoft-edge:", StringComparison.OrdinalIgnoreCase))
			{
				string LaunchURL = CommandLine[0].Substring(15);

				if (LaunchURL.StartsWith("?launchContext1=", StringComparison.OrdinalIgnoreCase)) // Handle FCU
				{
					var ProtocolParameters = HttpUtility.ParseQueryString(LaunchURL);
					string DecodedLaunchURL = HttpUtility.UrlDecode(ProtocolParameters["url"]);
					Uri LaunchUri;

					try
					{
						LaunchUri = new Uri(DecodedLaunchURL);
					}
					catch (System.UriFormatException)
					{
						return;
					}

					LaunchURL = LaunchUri.AbsoluteUri + "?" + HttpUtility.UrlEncode(LaunchUri.Query);
				}

				if (LaunchURL.StartsWith("//"))
					LaunchURL = LaunchURL.Substring(2);

				if (!new string[] {"http://", "https://"}.Any(ValidProtocol => LaunchURL.StartsWith(ValidProtocol, StringComparison.OrdinalIgnoreCase)))
					LaunchURL = "http://" + LaunchURL;

				if (Uri.IsWellFormedUriString(LaunchURL, UriKind.Absolute))
				{
					Process.Start(new ProcessStartInfo(){
						FileName = LaunchURL,
						UseShellExecute = true
					});
				}
			}
		}
	}
}