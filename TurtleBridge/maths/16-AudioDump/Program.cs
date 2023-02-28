using System;

namespace AudioDump
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			fm.DumpFiles("SampleTest01");
			fm.DumpFiles("SampleTest02");
			fm.DumpFiles("SampleTest03");
			fm.DumpFiles("SampleTest04");
			fm.Save();
			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
