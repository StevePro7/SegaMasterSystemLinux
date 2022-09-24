using Microsoft.Xna.Framework;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ScreenShotTest
{
	public class CsvManager
	{
		FileManager fileMananger;
		PaletteManager paletteManager;
		StringBuilder sb;
		const string comma = ",";

		public void Initialize(FileManager fileMananger, PaletteManager paletteManager)
		{
			this.fileMananger = fileMananger;
			this.paletteManager = paletteManager;
			Lines = new List<string>();
			sb = new StringBuilder();
		}

		public void Process(Color[] texColors, int px, int py)
		{
			Lines.Clear();
			int tmp_index;

			for (int cy = 0; cy < py; cy++)
			{
				sb.Clear();
				for (int cx = 0; cx < px; cx++)
				{
					tmp_index = cy * px + cx;
					var texColor = texColors[tmp_index];
					var text = paletteManager.GetColorAtIndex(texColor);
					sb.Append(text);
					sb.Append(comma);
					var bob = sb.ToString();
				}

				var line = sb.ToString();
				line = line.Substring(0, line.Length - 1);
				Lines.Add(line);
			}
		}

		public void Save(string file)
		{
			var path = $"{fileMananger.OutputDirectory}/{file}.csv";
			var data = Lines.ToArray();
			File.WriteAllLines(path, data);
		}

		public IList<string> Lines { get; private set; }
	}
}
