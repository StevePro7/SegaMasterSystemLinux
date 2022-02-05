using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ScreenShotTest
{
	public class Tilemap
	{
		string file;
		int wide;
		int high;

		public Tilemap(string file, int wide, int high)
		{
			this.file = file;
			this.wide = wide;
			this.high = high;

			Grid = new int[high, wide];
			Lines = new List<string>();
		}

		public void Update(int row, int col, int key)
		{
			Grid[row, col] = key;
		}

		public void Save()
		{
			var datas = new string[high];

			Lines.Clear();
			for (int row = 0; row < high; row++)
			{
				string line = String.Empty;
				for (int col = 0; col < wide; col++)
				{
					int key = Grid[row, col];
					line += key + ",";
				}

				datas[row] = line;
			}

			var total = wide * high;
			string header = $"// {file}_array : {wide} x {high} = {total}";
			Lines.Add(header);

			var code = $"unsigned char array[ {total} ] = ";
			Lines.Add("code");
			Lines.Add("{");
			foreach (var data in datas)
			{
				Lines.Add("	" + data);
			}
			Lines.Add("};");
		}

		public int[,] Grid { get; private set; }
		public List<string> Lines { get; private set; }
		public int Wide { get; private set; }
		public int High { get; private set; }
	}
}
