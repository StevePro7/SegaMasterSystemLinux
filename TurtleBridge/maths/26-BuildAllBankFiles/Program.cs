using System;

namespace ExtractCheckpoints
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			fm.Initialize();
			/fm.Process(1);
			fm.Process(2);
			fm.Process(3);
			fm.Process(4);
			fm.Process(5);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
