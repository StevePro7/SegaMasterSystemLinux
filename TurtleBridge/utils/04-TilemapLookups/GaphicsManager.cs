using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace AutomateSections
{
	public class GaphicsManager
	{
		public void Init()
		{
			Position = new Dictionary<string, int>();

			var count = 0;
			var lines = File.ReadAllLines("gfx.c");

			int start = 0;
			int finsh = 0;
			for (int i = 0; i < lines.Length; i++)
			{
				var line = lines[i];
				if (line.Contains("game_tiles__tilemap__bin"))
				{
					start = i;
					start += 1;
				}
				if (line.Contains("game_tiles__tiles__psgcompr"))
				{
					finsh = i;
					finsh -= 1;
				}
			}

			int delta = finsh - start;
			for (int i = start; i < start + delta; i++)
			{
				//if (73==delta)
				//{
				//	int z = 7;
				//}
				var line = lines[i];
				var texts = line.Split(new char[] { ',' });
				foreach (var text in texts)
				{
					if (text.Length == 0)
					{
						continue;
					}
					var data = text.Trim().Replace("\t", String.Empty);
					if (!Position.ContainsKey(data))
					{
						Position.Add(text, count);
					}
					count++;
				}
			}
		}

		public int Find(string key)
		{
			int value;
			bool result = Position.TryGetValue(key, out value);
			if (!result)
			{
				value = 0;
			}
			return value;
		}

		public IDictionary<string, int> Position { get; private set; }
	}
}
