using System;

namespace ExtractCheckpoints
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			//fm.Initialize();

			//fm.Process2("01");
			fm.Process2("02");
			fm.Process2("03");
			fm.Process2("04");
			fm.Process2("05");
			//fm.Build("02", "level_0201_AA-mixerd01_BB-bridge02_CC-bridge01_DD-island01");

			//Console.WriteLine("Processed \"" + cm.Directory + "\"");
			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
