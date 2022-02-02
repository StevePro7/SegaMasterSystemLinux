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
			foreach (var line in lines)
			{
				var texts = line.Split(new char[] { ',' });
				foreach (var text in texts)
				{
					if (text.Length == 0)
					{
						continue;
					}
					if (!Position.ContainsKey(text))
					{
						Position.Add(text, count);
					}
					count++;
				}
			}
		}

		public int Find(string key)
		{
			return Position[key];
		}

		public IDictionary<string, int> Position { get; private set; }
	}
}
