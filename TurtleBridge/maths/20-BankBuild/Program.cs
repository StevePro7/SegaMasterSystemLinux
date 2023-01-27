using System;
using System.Configuration;

namespace FunctionMgr
{
	class Program
	{
		static void Main()
		{
			var numBanks = Convert.ToInt32(ConfigurationManager.AppSettings["NumBanks"]);
			
			var fm = new FileManager();
			fm.Init();

			var bm = new BankManager(fm);
			bm.Init();
			bm.ProcessBanks(numBanks);
			//bm.ProcessBank(2);
			//bm.ProcessBank02(2);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
