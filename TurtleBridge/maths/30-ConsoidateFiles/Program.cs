using System;

namespace FunctionMgr
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			fm.Process("level_0104");
			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
