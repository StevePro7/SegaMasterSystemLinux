using System;

namespace CommandBuilderSRAM
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			fm.Init();
			fm.Process("output.ssm");

			var cm = new CommandManager();
			cm.Process(fm.Bytes);
			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
