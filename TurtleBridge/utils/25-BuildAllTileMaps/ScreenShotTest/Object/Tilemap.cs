using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ScreenShotTest
{
	public class Tilemap
	{
		string name;
		int wide;
		int high;

		public Tilemap(string name, int wide, int high)
		{
			this.name = name;
			this.wide = wide;
			this.high = high;

			Grid = new int[high, wide];
		}

		public void Update(int row, int col, int key)
		{
			Grid[row, col] = key;
		}

		public int[,] Grid { get; private set; }
	}
}
