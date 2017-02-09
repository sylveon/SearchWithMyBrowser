using System.Diagnostics;

namespace SearchWithMyBrowser {
    public class Edge2Browser {
        public static void Main(string[] CommandLine) {
            if (CommandLine.Length > 0 && CommandLine[0].StartsWith("microsoft-edge:")) {
                Process.Start(CommandLine[0].Substring(15));
            }
        }
    }
}