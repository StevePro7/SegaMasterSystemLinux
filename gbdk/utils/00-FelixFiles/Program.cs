using System;

namespace FunctionMgr
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			fm.Init();
			fm.ProcessH();
			//fm.ProcessC();

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
