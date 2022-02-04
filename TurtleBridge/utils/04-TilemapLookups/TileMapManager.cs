using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace AutomateSections
{
	public class TileMapManager
	{
		GaphicsManager gm;
		int[] outTiles;

		public TileMapManager(GaphicsManager gm)
		{
			this.gm = gm;
			OutLines = new List<string>();
			OutTiles = new List<int>();
		}

		public void Extract(int x, int y, int w, int h)
		{
			string line = String.Empty;
			int start = y * 16 + x;
			for (int b = 0; b < h; b++)
			{
				for (int a = 0; a < w; a++)
				{
					int index = start + ((b * 16) +  a);
					int data = outTiles[index];
					line += data.ToString() + ",";
				}
			}

			line = line.Substring(0, line.Length - 1);
			Console.WriteLine(line);
			File.WriteAllText("array.txt", line);
		}

		public void Init()
		{
			int count = 1;

			OutLines.Clear();
			var lines = File.ReadAllLines("tileMap.txt");
			foreach (var line in lines)
			{
				var outLine = String.Empty;
				var texts = line.Split(new char[] { ',' });
				foreach (var text in texts)
				{
					Console.WriteLine(count);
					count++;

					if (text.Length == 0)
					{
						continue;
					}

					var data = Int32.Parse(text);
					var key = data.ToString("X").ToLower();
					key = "0x" + key.PadLeft(2, '0');

					int find = gm.Find(key);
					//if (-1 == find)
					//{
					//	int z = 7;
					//}
					outLine += find + ",";
					OutTiles.Add(find);
				}
				OutLines.Add(outLine);
			}

			File.WriteAllLines("stevepro.txt", OutLines.ToArray());

			outTiles = OutTiles.ToArray();
		}

		public IList<string> OutLines { get; private set; }
		public IList<int> OutTiles { get; private set; }
	}
}
