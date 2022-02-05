using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace ScreenShotTest
{
	public class TileManager
	{
		PaletteManager paletteManager;
		StringBuilder sb;
		Color[] newColors;
		string hash;
		int counter;

		public void Initialize(PaletteManager paletteManager)
		{
			this.paletteManager = paletteManager;
			TileBank = new List<Tile>();
			TileDictionary = new Dictionary<int, string>();
			sb = new StringBuilder();
			counter = 0;
		}

		public int Process(Color[] texColors, int inp_start, int inp_delta)
		{
			int key = 0;

			newColors = new Color[8 * 8];
			hash = String.Empty;
			sb.Clear();

			int row_index;
			int tmp_index;

			for (int cy = 0; cy < 8; cy++)
			{
				row_index = cy * inp_delta;
				row_index = inp_start + row_index;

				for (int cx = 0; cx < 8; cx++)
				{
					tmp_index = row_index + cx;
					var texColor = texColors[tmp_index];
					var text = paletteManager.GetColorAtIndex(texColor);
					var data = text.Replace("$", "");
					sb.Append(data);
					newColors[cy * 8 + cx] = texColors[tmp_index];
				}
			}

			hash = sb.ToString();

			// Check if tile exists.
			bool exists = false;
			var dictTiles = TileDictionary.FirstOrDefault(x => x.Value == hash);
			if (TileDictionary.Keys.Count != 0)
			{
				exists = null != dictTiles.Value;
			}

			if (exists)
			{
				key = dictTiles.Key;
			}
			else
			{
				key = counter;
				TileDictionary.Add(key, hash);

				var name = key.ToString().PadLeft(3, '0');
				var tile = new Tile(key, name, hash, newColors);
				counter++;
			}

			return key;
		}

		public void Save()
		{
		}

		public List<Tile> TileBank{ get; private set; }
		public Dictionary<int, string> TileDictionary{ get; private set; }
	}
}
