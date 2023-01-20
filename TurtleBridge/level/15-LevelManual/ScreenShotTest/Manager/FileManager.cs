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

		private List<int> GetCols(int tile)
		{
			var item = new List<int>();
			for (int idx = 0; idx < 4; idx++)
			{
				int tmp = idx;
				// Reverse columns for flipped tiles.
				if (((int)AssetType.QbridgeSideFlip == tile) || ((int)AssetType.TislandTreeLFlip == tile) || ((int)AssetType.UislandTreeRFlip == tile))
				{
					tmp = (4-1) - idx;
					tmp += 8;
				}
				// Sign
				if (((int)AssetType.RbridgeSignGoal == tile) || ((int)AssetType.SislandSignGoal == tile))
				{
					tmp += 4;
				}

				//int val = tmp << 4;
				//string cols = "0x" + tmp.ToString("X").ToString().PadLeft(2, '0');
				item.Add(tmp);
			}

			return item;
		}

		private List<int> GetType(int tile)
		{
			var item = new List<int>();
			for (int idx = 0; idx < 4; idx++)
			{
				// Make adjustments.
				if ((int)AssetType.QbridgeSideFlip == tile)
				{
					tile = (int)tile_type.tile_type_bridge_side;
				}
				else if ((int)AssetType.RbridgeSignGoal == tile)
				{
					tile = (int)tile_type.tile_type_bridge_sign;
				}
				else if ((int)AssetType.SislandSignGoal == tile)
				{
					tile = (int)tile_type.tile_type_island_sign;
				}
				else if ((int)AssetType.TislandTreeLFlip == tile)
				{
					tile = (int)tile_type.tile_type_islandTreeL;
				}
				else if ((int)AssetType.UislandTreeRFlip== tile)
				{
					tile = (int)tile_type.tile_type_islandTreeR;
				}

				item.Add(tile);
				//string val = "0x" + tile.ToString("X").ToString().PadLeft(2, '0');
				//item.Add(val);
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

			// Bytes array.
			data1.Clear();
			data2.Clear();
			data3.Clear();
			for (int idx = 0; idx < cols; idx++)
			{
				var tile = Tiles[idx];
				var left = GetCols(tile);
				var rght = GetType(tile);
				//data1.AddRange(left);
				//data2.AddRange(rght);

				for (int bob = 0; bob < 4; bob++)
				{
					var d1 = left[bob];
					var d2 = rght[bob];
					var d3 = d1 + d2;
				}
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
