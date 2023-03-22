using System;

namespace ExtractCheckpoints
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			//fm.Initialize();

			fm.Process("01");
			//fm.Build("02", "level_0201_AA-mixerd01_BB-bridge02_CC-bridge01_DD-island01");

			//Console.WriteLine("Processed \"" + cm.Directory + "\"");
			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
