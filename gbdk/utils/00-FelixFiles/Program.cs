using System;
using System.Configuration;

namespace FunctionMgr
{
	class Program
	{
		static void Main()
		{
			var fm = new FileManager();
			fm.Init();
			fm.ProcessC();

			//var bm = new BankManager(fm);
			//bm.Init();
			//bm.ProcessBank(2);
			//bm.ProcessBank02(2);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
