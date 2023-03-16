using System;

namespace ExtractCheckpoints
{
	class Program
	{
		static void Main()
		{
			//var cm = new ConfigManager();
			//cm.Initialize();
			var fm = new FileManager();
			fm.Initialize();
			//fm.Process("Atiles_0102_01");
			//fm.Process("Btiles_0102_01");
			fm.Process("tiles_0103_01");
			//fm.Process("tiles_0104_01");

			//Console.WriteLine("Processed \"" + cm.Directory + "\"");
			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
