using System;

namespace CommandBuilderSRAM
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			fm.Init();
			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
