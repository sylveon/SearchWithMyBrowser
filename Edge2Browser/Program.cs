using System;
using System.Diagnostics;
using System.Linq;
using System.Windows.Forms;

namespace SearchWithMyBrowser
{
	class Edge2Browser
	{
		static void Main(string[] CommandLine)
		{
			if (CommandLine.Length == 0)
			{
				MessageBox.Show("Do a web search with Cortana to benefit of SearchWithMyBrowser!", "SearchWithMyBrowser", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
			}
			else if (CommandLine.Length > 0 && CommandLine[0].StartsWith("microsoft-edge:", StringComparison.OrdinalIgnoreCase))
			{
				string LaunchURL = CommandLine[0].Substring(15);

				if (LaunchURL.StartsWith("//"))
				{
					LaunchURL = LaunchURL.Substring(2);
				}

				if (!new string[] {"http://", "https://"}.Any(ValidProtocol => LaunchURL.StartsWith(ValidProtocol, StringComparison.OrdinalIgnoreCase)))
				{
					LaunchURL = "http://" + LaunchURL;
				}

				if (new Uri(LaunchURL).IsWellFormedOriginalString())
				{
					Process.Start(new ProcessStartInfo(){FileName = LaunchURL});
				}
			}
		}
	}
}