using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace ScreenShotTest
{
	public class FileManager
	{
		private IList<string> data;
		private int cols;

		public FileManager(int wide)
		{
			cols = wide / 16;
			Tiles = new int[cols];
			for (int idx = 0; idx < cols; idx++)
			{
				Tiles[idx] = 0;
			}

			data = new List<string>();
		}

		public void LoadContent()
		{
			if (!File.Exists("level.csv"))
			{
				return;
			}

			var delim = new char[] { ',' };
			var lines = File.ReadAllLines("level.csv");
			int idx = 0;
			foreach (var line in lines)
			{
				var objs = line.Split(delim);
				foreach (var obj in objs)
				{
					if (idx < cols)
					{
						Tiles[idx] = 0;
						if (0 != obj.Length)
						{
							Tiles[idx] = Convert.ToInt32(obj);
							idx++;
						}
					}
				}
			}
		}

		public void Save(int[] tiles)
		{
			Tiles = tiles;
			string format = "yyyyMMdd-HHmmss";
			var path = DateTime.Now.ToString(format);
			if (!Directory.Exists(path))
			{
				Directory.CreateDirectory(path);
			}

			for (int idx = 0; idx < cols; idx++)
			{
				var tile = Tiles[idx].ToString().PadLeft(2, '0');
				data.Add(tile);
			}

			var lines = data.ToArray();
			var csv = String.Join(",", lines);
			File.WriteAllText(path + "/level.csv", csv);

			data.Clear();
			var numTiles = tiles.Length;
			var scr = numTiles % 8 + 1;
			//string line = $"{tiles}"
			data.Add("NoScreens," + scr.ToString());
		}

		public int[] Tiles { get; private set; }
	}
}
