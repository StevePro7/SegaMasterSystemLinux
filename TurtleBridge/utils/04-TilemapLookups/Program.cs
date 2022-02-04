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

			int x = 0;
			int y = 0;
			int w = 128/8;
			int h = 32/8;
			tm.Extract(x, y, w, h);

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
