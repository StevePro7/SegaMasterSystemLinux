using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace ScreenShotTest
{
	public class FileManager
	{
		private ConfigManager configManager;
		private List<string> data, text1, text2, total;
		private List<int> data1, data2, data3;
		private int cols;
		private string filename;
	//	private int maxLevel;

		public FileManager(ConfigManager configManager, int wide)
		{
			this.configManager = configManager;
			cols = wide / 16;
			Tiles = new int[cols];
			for (int idx = 0; idx < cols; idx++)
			{
				Tiles[idx] = 0;
			}

			data = new List<string>();
			text1 = new List<string>();
			text2 = new List<string>();
			total = new List<string>();
			data1 = new List<int>();
			data2 = new List<int>();
			data3 = new List<int>();

			string world = configManager.NumWorld.ToString().PadLeft(2, '0');
			string round = configManager.NumRound.ToString().PadLeft(2, '0');
			filename  = String.Format("level_{0}{1}_txt", world, round);
			//prefix = configManager.LevelPrefix;
			//maxLevel = configManager.NumLevels;
		}

		public void LoadContent()
		{
			int upper_nibble;
			int lower_nibble;
			var delim = new char[] { ',' };
			string[] lines = null;
			int idx = 0;

			if (File.Exists("bankX.c"))
			{
				lines = File.ReadAllLines("bankX.c");
				foreach (var temp in lines)
				{
					var line = temp.Trim();
					if (line.Contains("const") || line.Contains("{") || line.Contains("}"))
					{
						continue;
					}

					if (line.EndsWith(","))
					{
						line = line.Substring(0, line.Length - 1);
					}
					var objs = line.Split(delim);
					if (objs.Length != 16)
					{
						throw new Exception("bankX.c NOT 16x elements");
					}

					for (int cnt = 0; cnt < 16; cnt += 4)
					{
						var text = objs[cnt].Trim();
						int data = Convert.ToInt32(text, 16);

						upper_nibble = 0;
						lower_nibble = 0;
						engine_util_manager_convertByteToNibbles(data, ref upper_nibble, ref lower_nibble);
						Tiles[idx] = lower_nibble;

						// Hack workaround.
						if ((int)AssetType.CbridgeSide == lower_nibble && upper_nibble >= 8)
						{
							Tiles[idx] = (int)AssetType.QbridgeSideFlip;
						}
						if (upper_nibble >= 4)
						{
							if ((int)AssetType.DbridgeSign == lower_nibble)
							{
								Tiles[idx] = (int)AssetType.RbridgeSignGoal;
							}
							if ((int)AssetType.HislandSign == lower_nibble)
							{
								Tiles[idx] = (int)AssetType.SislandSignGoal;
							}
						}

						idx++;
					}
				}

				return;
			}

			if (!File.Exists("level.csv"))
			{
				return;
			}

			//var delim = new char[] { ',' };
			lines = File.ReadAllLines("level.csv");
			idx = 0;
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

		private List<int> GetCols02(int tile)
		{
			var item = new List<int>();
			item.Clear();
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

				int val = tmp << 4;
				item.Add(val);
			}

			return item;
		}

		private List<int> GetType02(int tile)
		{
			var item = new List<int>();

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
			else if ((int)AssetType.UislandTreeRFlip == tile)
			{
				tile = (int)tile_type.tile_type_islandTreeR;
			}

			for (int idx = 0; idx < 4; idx++)
			{
				item.Add(tile);
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

			// Bytes array #2.
			data1.Clear();
			data2.Clear();
			data3.Clear();
			for (int idx = 0; idx < cols; idx++)
			{
				var tile = Tiles[idx];
				var left = GetCols02(tile);
				var rght = GetType02(tile);
				data1.AddRange(left);
				data2.AddRange(rght);

				for (int bob = 0; bob < 4; bob++)
				{
					var d1 = left[bob];
					var d2 = rght[bob];
					var d3 = d1 + d2;
					data3.Add(d3);
				}
			}
			DumpData2(data3, path);

			// level.csv
			data.Clear();
			for (int idx = 0; idx < cols; idx++)
			{
				var tile = Tiles[idx].ToString().PadLeft(2, '0');
				data.Add(tile);
			}
			var lines = data.ToArray();
			data.Clear();
			for (int idx = 0; idx < cols; idx += 8)
			{
				var line = String.Join(",", lines, idx, 8);
				data.Add(line);
			}

			lines = data.ToArray();
			File.WriteAllLines(path + "/level.csv", lines);
			//File.WriteAllText(path + "/level.csv", csv);

			data.Clear();
			var numTiles = tiles.Length;
			var scr = numTiles / 8;
			//string line = $"{tiles}"
			data.Add("NoScreens," + scr.ToString());
			var contents = data.ToArray();
			//File.WriteAllLines(path + "/info.txt", contents);

			SaveLevelnfo(path);
		}

		private void SaveLevelnfo(string path)
		{
			data.Clear();
			text1.Clear();
			text2.Clear();
			data.Add("const unsigned char *level_object_data[] =");
			text1.Add("const unsigned int level_object_size[] =");
			text2.Add("const unsigned char level_object_bank[] =");
			data.Add("{");
			text1.Add("{");
			text2.Add("{");
			//for (int idx = 0; idx <= maxLevel; idx++)
			//{
			//	//string levl = (idx).ToString().PadLeft(2, '0');
			//	//string file = String.Format("{0}{1}_txt", prefix, levl);
			//	data.Add("\t" + filename + ",");
			//	text1.Add("\t" + filename + "_size,");
			//	text2.Add("\t" + filename + "_bank,");
			//}
			data.Add("};");
			text1.Add("};");
			text2.Add("};");

			total.Clear();
			total.AddRange(data);
			total.AddRange(text1);
			total.AddRange(text2);

			var contents = total.ToArray();
			//File.WriteAllLines(path + "/fixedbank.c", contents);
			
		}

		private void DumpData2(List<int> data3, string path)
		{
			var file = new List<string>();
			const int wide = 16;
			int bank = configManager.NumBank;
			int loop = 0;
			int data = 0;
			string type = String.Empty;
			string line = String.Empty;

			//string levl = maxLevel.ToString().PadLeft(2, '0');
			//string name = String.Format("level_{1}{2}_txt", prefix, world, round);

			file.Add("const unsigned char " + filename + "[] =");
			file.Add("{");
			for (int idx = 0; idx < data3.Count; idx++)
			{
				data = data3[idx];
				type = "0x" + data.ToString("X").ToString().PadLeft(2, '0');
				if (0 != loop)
				{
					line += type;
				}
				else
				{
					line += "\t" + type;
				}
				loop++;
				if (wide != loop)
				{
					line += ",";
				}
				else
				{
					line += ",";
					file.Add(line);
					line = String.Empty;
					loop = 0;
				}
			}

			if (0 != line.Length)
			{
				file.Add(line);
			}

			file.Add("};");
			var contents = file.ToArray();
			string banktext = "bank" + bank;
			File.WriteAllLines(path + "/" + banktext + ".c", contents);
			File.WriteAllLines(path + "/../../../../../bankX.c", contents);
			// HACK - avoid copy n' paste during level testing.
			File.WriteAllLines(path + "/../../../../../../../../tilesNew/20-NewGraphicsTestingSMS/09-graphics_scroll_NEW/dev/banks/" + banktext + ".c", contents);

			file.Clear();
			file.Add("extern const unsigned char " + filename + "[];");
			file.Add("#define				" + filename + "_size " + cols * 4);
			file.Add("#define				" + filename + "_bank " + bank);
			contents = file.ToArray();
			File.WriteAllLines(path + "/" + banktext + ".h", contents);
			File.WriteAllLines(path + "/../../../../../bankX.h", contents);
			// HACK - avoid copy n' paste during level testing.
			File.WriteAllLines(path + "/../../../../../../../../tilesNew/20-NewGraphicsTestingSMS/09-graphics_scroll_NEW/dev/banks/" + banktext + ".h", contents);

		}

		void engine_util_manager_convertByteToNibbles(int data, ref int upper_nibble, ref int lower_nibble)
		{
			upper_nibble = (data >> 4) & 0x0F;
			lower_nibble = data & 0x0F;
		}

		public int[] Tiles { get; private set; }
	}
}
