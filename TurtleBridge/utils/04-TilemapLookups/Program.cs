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
			int y = 7;
			int w = 4;
			int h = 3;
			tm.Extract(x, y, w, h);

			//var cm = new ConvertManager();

			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
