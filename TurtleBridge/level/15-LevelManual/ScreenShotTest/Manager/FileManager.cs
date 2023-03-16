using System;
using System.Collections.Generic;
using System.IO;

namespace ScreenShotTest
{
	public class FileManager
	{
		private ConfigManager configManager;
		private TilesManager tilesManager;
		private List<string> data, text1, text2, total;
		private List<int> data1, data2, data3;
		private int cols;
		private string filename, filepath;
		private string world, round, point;
		private const int screen_wide = 32;
	//	private int maxLevel;

		public FileManager(ConfigManager configManager, TilesManager tilesManager, int wide)
		{
			this.configManager = configManager;
			this.tilesManager = tilesManager;
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

			world = configManager.NumWorld.ToString().PadLeft(2, '0');
			round = configManager.NumRound.ToString().PadLeft(2, '0');
			point = configManager.CheckPoint.ToString().PadLeft(2, '0');
			filename = String.Format("level_{0}{1}", world, round);
			filepath = "output/" + filename;
			filename += "_txt";
			
			//prefix = configManager.LevelPrefix;
			//maxLevel = configManager.NumLevels;
		}

		public void Initialize()
		{
			//var path = "output";// DateTime.Now.ToString(format);
			if (!Directory.Exists(filepath))
			{
				Directory.CreateDirectory(filepath);
			}
			else
			{
				var searchPattern = String.Format("*{0}{1}_{2}*", world, round, point);
				var files = Directory.GetFiles(filepath, searchPattern);
				foreach (var file in files)
				{
					File.Delete(file);
				}
			}
		}

		public void LoadContent()
		{
			int upper_nibble;
			int lower_nibble;
			var delim = new char[] { ',' };
			string[] lines = null;
			int idx = 0;

			if (File.Exists("MyTiles.csv"))
			{
				Tiles = tilesManager.Tiles;
				return;
			}

			if (File.Exists("bankX.c"))
			{
				lines = File.ReadAllLines("bankX.c");
				foreach (var temp in lines)
				{
					var line = temp.Trim();
					if (line.Contains("const") || line.Contains("{") || line.Contains("}") || line.Contains("Check"))
					{
						continue;
					}

					if (line.EndsWith(","))
					{
						line = line.Substring(0, line.Length - 1);
					}
					var objs = line.Split(delim);
					int half = screen_wide / 2;
					if (objs.Length != screen_wide && objs.Length != half)
					{
						throw new Exception("bankX.c NOT correct - no. elements " + objs.Length);
					}

					int size = screen_wide;
					// include for legacy
					if (objs.Length == half)
					{
						size = half;
					}
					for (int cnt = 0; cnt < size; cnt += 4)
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

		public void Save(int[] tiles, string myfilePath, string banktext)
		{
			Tiles = tiles;
			//string format = "yyyyMMdd-HHmmss";

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

			//string banktext = String.Format("level_{0}{1}_{2}", world, round, point);
			DumpData2(data3, myfilePath, banktext);

			// steven.txt
			data.Clear();
			int screen = 0;
			for (int idx = 0; idx < cols; idx++)
			{
				if (0 == idx % 8)
				{
					screen++;
					data.Add("// Screen : " + screen.ToString().PadLeft(2, '0'));
				}
				//adriana - tweak this output?
				var tile = Tiles[idx];
				var tile2 = Tiles[idx].ToString().PadLeft(2, '0');
				var valu = (AssetType)tile;
				var info = valu.ToString();
				var msgs = String.Format("{0},{1}", tile2, info);
				data.Add(msgs.ToString());
				//data.Add(tile.ToString());
				//	data.Add(info.ToString());
			}

			//string banktext = String.Format("steve_{0}{1}_{2}.txt", world, round, point);
			//var contents = data.ToArray();
			//File.WriteAllLines(filepath + "/" + banktext, contents);

			// Outputs all world / round combos to fixedbank.c
			//SaveLevelnfo("output");
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

			const int maxWorlds = 5;
			const int maxRounds = 8;
			for (int idz = 1; idz <= maxWorlds; idz++)
			{
				for (int idx = 1; idx <= maxRounds; idx++)
				{
					string world = idz.ToString().PadLeft(2, '0');
					string round = idx.ToString().PadLeft(2, '0');
					var filenameX = String.Format("level_{0}{1}_txt", world, round);

					data.Add("\t" + filenameX + ",");
					text1.Add("\t" + filenameX + "_size,");
					text2.Add("\t" + filenameX + "_bank,");
				}
			}

			data.Add("};");
			text1.Add("};");
			text2.Add("};");

			total.Clear();
			total.AddRange(data);
			total.AddRange(text1);
			total.AddRange(text2);

			var contents = total.ToArray();
			//var filetext = String.Format("output/world_{0}.c", world);
			var filetext = "output/fixedbank.c";
			File.WriteAllLines(filetext, contents);
		}

		private void DumpData2(List<int> data3, string path, string banktext)
		{
			var file = new List<string>();
			//const int wide = 32;			// TODO 32x cols per screen i.e. 32 * 8 = 256px wide.
			int bank = configManager.NumBank;
			int loop = 0;
			int data = 0;
			string type = String.Empty;
			string line = String.Empty;

			//string levl = maxLevel.ToString().PadLeft(2, '0');
			//string name = String.Format("level_{1}{2}_txt", prefix, world, round);

			int value = configManager.CheckPoint;
			int check = 0; 
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
				if (screen_wide != loop)
				{
					line += ",";
				}
				else
				{
					line += ",";
					if (0 == check % configManager.CheckDelta)
					{
						file.Add("\t// Checkpoint #" + value);
						value++;
					}
					check++;

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
			//string banktext = String.Format("level_{0}{1}_{2}", world, round, point);
			File.WriteAllLines(path + "/" + banktext + ".c", contents);
			File.WriteAllLines(path + "/../../bankX.c", contents);
			File.WriteAllLines(path + "/../../../../../../bankX.c", contents);
			// HACK - avoid copy n' paste during level testing.
			//if (configManager.TheCopy)
			//{
			//	File.WriteAllLines(path + "/../../../../../../../../../tilesNew/20-NewGraphicsTestingSMS/09-graphics_scroll_NEW/dev/banks/" + banktext + ".c", contents);
			//}

			file.Clear();
			file.Add("extern const unsigned char " + filename + "[];");
			file.Add("#define				" + filename + "_size " + cols * 4);
			file.Add("#define				" + filename + "_bank " + bank);
			contents = file.ToArray();
			File.WriteAllLines(path + "/" + banktext + ".h", contents);
			File.WriteAllLines(path + "/../../bankX.h", contents);
			File.WriteAllLines(path + "/../../../../../../bankX.h", contents);
			// HACK - avoid copy n' paste during level testing.
			//if (configManager.TheCopy)
			//{
			//	File.WriteAllLines(path + "/../../../../../../../../tilesNew/20-NewGraphicsTestingSMS/09-graphics_scroll_NEW/dev/banks/" + banktext + ".h", contents);
			//}

			// Make local copy of the CSV file used to render screen.
			string csvName = banktext.Replace("level_", "tiles_");
			File.Copy("MyTiles.csv", path + "/" + csvName + ".csv");	// TODO revert comment
			//File.Copy("MyTiles.csv", path + "/../../MyTiles.csv");
		}

		void engine_util_manager_convertByteToNibbles(int data, ref int upper_nibble, ref int lower_nibble)
		{
			upper_nibble = (data >> 4) & 0x0F;
			lower_nibble = data & 0x0F;
		}

		public int[] Tiles { get; private set; }
	}
}
