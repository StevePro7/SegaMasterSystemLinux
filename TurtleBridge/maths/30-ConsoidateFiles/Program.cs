using System;

namespace ConsoidateFiles
{
	class Program
	{
		static void Main()
		{
			var cm = new ConfigManager();
			cm.Initialize();
			var fm = new FileManager();
			fm.Initialize();
			fm.Process(cm.Directory);

			Console.WriteLine("Processed \"" + cm.Directory + "\"");
			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
