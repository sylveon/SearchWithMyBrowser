using System.Diagnostics;

namespace SearchWithMyBrowser {
    public class Edge2Browser {
        public static void Main(string[] CommandLine) {
            if (CommandLine[0] == "/register") {
                Process.Start(CommandLine[0].Substring(15));
            }
        }
    }
}