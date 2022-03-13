using System;
using System.Configuration;

namespace BinaryFileWrite
{
	class Program
	{
		static void Main()
		{
			var lastBank = Convert.ToInt32(ConfigurationManager.AppSettings["lastBank"]);
			Console.WriteLine($"Banks 2-'{lastBank}'");

			var bm = new BankManager();
			bm.Init(lastBank);
			//bm.Update(lastBank);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
