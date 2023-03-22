using System;

namespace ConsoidateFiles
{
	class Program
	{
		static void Main()
		{
			var cm = new ContentManager();
			cm.Initialize();

			var fm = new FileManager();
			fm.Initialize();
			fm.Process();

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
