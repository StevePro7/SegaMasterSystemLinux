using System;

namespace AudioDump
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			//fm.DumpFiles("SampleTest01");
			fm.DumpFile("bank3.h");

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
