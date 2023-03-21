using System;

namespace ConsoidateFiles
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			fm.Initialize();
			fm.Process(2);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
