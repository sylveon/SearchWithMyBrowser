using System.Threading.Tasks;

namespace SearchWithMyBrowser
{
	class FCUHack
	{
		static void Main()
		{
			while (true)
			{
				int two = 1 + 1; // Do work
				Task.Delay(5000).GetAwaiter().GetResult();
			}
		}
	}
}