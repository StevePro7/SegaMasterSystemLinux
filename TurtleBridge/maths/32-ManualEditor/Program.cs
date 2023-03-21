using System;

namespace ConsoidateFiles
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			fm.Initialize();
			fm.Process(12);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
