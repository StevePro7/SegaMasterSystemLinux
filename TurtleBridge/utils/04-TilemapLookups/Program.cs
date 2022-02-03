using System;
using System.Collections.Generic;
using System.Configuration;

namespace AutomateSections
{
	class Program
	{
		static void Main()
		{
			var gm = new GaphicsManager();
			gm.Init();

			var tm = new TileMapManager(gm);
			tm.Init();

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
