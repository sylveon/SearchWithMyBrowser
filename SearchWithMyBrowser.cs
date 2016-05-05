using Microsoft.Win32;
using System.Diagnostics;

public class SearchWithMyBrowser {
    public static void Main(string[] CommandLine) {
        if (CommandLine[0] == "/register") {
            RegistryKey Software = Registry.LocalMachine.OpenSubKey("Software", true);
            RegistryKey Class = Software.CreateSubKey(@"Classes\SearchWithMyBrowser", true);
            Class.SetValue("URL Protocol", string.Empty);
            Class.SetValue(string.Empty, "URL:SearchWithMyBrowser Protocol");
            RegistryKey Command = Class.CreateSubKey(@"shell\open\command");
            Command.SetValue(string.Empty, "\"" + Process.GetCurrentProcess().MainModule.FileName + "\" \"%1\"");
            RegistryKey URLAssociations = Software.CreateSubKey(@"SearchWithMyBrowser\Capabilities\URLAssociations", true);
            URLAssociations.SetValue("microsoft-edge", "SearchWithMyBrowser");
            RegistryKey RegisteredApplications = Software.OpenSubKey("RegisteredApplications", true);
            RegisteredApplications.SetValue("SearchWithMyBrowser", @"Software\SearchWithMyBrowser\Capabilities");
        } else if (CommandLine[0] == "/unregister") {
            RegistryKey Software = Registry.LocalMachine.OpenSubKey("Software", true);
            RegistryKey RegisteredApplications = Software.OpenSubKey("RegisteredApplications", true);
            RegisteredApplications.DeleteValue("SearchWithMyBrowser");
            Software.DeleteSubKeyTree("SearchWithMyBrowser");
            RegistryKey Classes = Software.OpenSubKey("Classes", true);
            Classes.DeleteSubKeyTree("SearchWithMyBrowser");
        } else {
            Process.Start(CommandLine[0].Substring(15));
        }
    }
}