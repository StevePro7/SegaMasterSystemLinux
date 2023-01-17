using System;
using System.IO;

namespace ScreenShotTest
{
	public class FileManager
	{
		private int cols;

		public FileManager(int wide)
		{
			cols = wide / 16;
			Tiles = new int[cols];
			for (int idx = 0; idx < cols; idx++)
			{
				Tiles[idx] = 0;
			}
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

		public int[] Tiles { get; private set; }
	}
}
