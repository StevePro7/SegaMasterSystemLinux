using System;

namespace ExtractCheckpoints
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			fm.Initialize();
			fm.Process();

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
