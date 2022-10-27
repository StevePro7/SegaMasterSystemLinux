using System;
using System.Configuration;

namespace StorageManager
{
	class Program
	{
		static void Main()
		{
			var cm = new ConfigManager();
			var fm = new FileManager();

			cm.Init();
			fm.Init();
			fm.Load();
			//fm.Process1(cm.Single);
			fm.Process2(cm.Single);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
