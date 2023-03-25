using System;

namespace CommandBuilderSRAM
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			fm.Init();
			//fm.Process("output.ssm");
			fm.Process("output.sav");

			var cm = new CommandManager();
			cm.Process(fm.Bytes);
			cm.Save();

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
