using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ScreenShotTest
{
	public class TilemapManager
	{
		public void Initialize()
		{
			TilemapList = new Dictionary<string, Tilemap>();
		}

		public void Setup(string file, int wide, int high)
		{
			Tilemap tilemap = new Tilemap(file, wide, high);
			TilemapList.Add(file, tilemap);
		}

		public void Update(string file, int col, int row, int key)
		{
			Tilemap tilemap = TilemapList[file];
			tilemap.Update(row, col, key);
		}

		public void Save(string file)
		{
			Tilemap tilemap = TilemapList[file];
			tilemap.Save();
		}

		public Dictionary<string, Tilemap> TilemapList { get; private set; }
	}
}
