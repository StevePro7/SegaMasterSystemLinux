using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace ScreenShotTest
{
	public class FileManager
	{
		private List<string> data, data1, data2, data3;
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
			data1 = new List<string>();
			data2 = new List<string>();
			data3 = new List<string>();
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

		private List<string> GetType(int tile)
		{
			List<string> item = new List<string>();
			for (int idx = 0; idx < 4; idx++)
			{
				string val = "0x" + tile.ToString("X").ToString().PadLeft(2, '0');
				item.Add(val);
			}

			return item;
		}

		public void Save(int[] tiles)
		{
			Tiles = tiles;
			//string format = "yyyyMMdd-HHmmss";
			var path = "output";// DateTime.Now.ToString(format);
			if (!Directory.Exists(path))
			{
				Directory.CreateDirectory(path);
			}
			else
			{
				var files = Directory.GetFiles(path);
				foreach(var file in files)
				{
					File.Delete(file);
				}
			}

			for (int idx = 0; idx < cols; idx++)
			{
				var tile = Tiles[idx];
				var item = GetType(tile);
				data.AddRange(item);
			}

			// level.csv
			data.Clear();
			for (int idx = 0; idx < cols; idx++)
			{
				var tile = Tiles[idx].ToString().PadLeft(2, '0');
				data.Add(tile);
			}
			var lines = data.ToArray();
			var csv = String.Join(",", lines);
			//File.WriteAllText(path + "/level.csv", csv);

			data.Clear();
			var numTiles = tiles.Length;
			var scr = numTiles / 8;
			//string line = $"{tiles}"
			data.Add("NoScreens," + scr.ToString());
			var contents = data.ToArray();
			//File.WriteAllLines(path + "/info.txt", contents);
		}

		public int[] Tiles { get; private set; }
	}
}
