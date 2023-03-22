using System;

namespace ExtractCheckpoints
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			//fm.Initialize();

			fm.Process1();
			//fm.Process2("02");
			//fm.Process2("03");
			//fm.Process2("04");
			//fm.Process2("05");

			//fm.Process2("01");
			//fm.Process2("02");
			//fm.Process2("03");
			//fm.Process2("04");
			//fm.Process2("05");

			//Console.WriteLine("Processed \"" + cm.Directory + "\"");
			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
