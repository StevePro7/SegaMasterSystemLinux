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

		public TileMapManager(GaphicsManager gm)
		{
			this.gm = gm;
			OutLines = new List<string>();
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
					outLine += find + ",";
				}
				OutLines.Add(outLine);
			}

			File.WriteAllLines("stevepro.txt", OutLines.ToArray());
		}

		public IList<string> OutLines { get; private set; }
	}
}
