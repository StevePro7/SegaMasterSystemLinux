using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace ScreenShotTest
{
	public class TileManager
	{
		GraphicsDevice graphicsDevice;
		ImageManager imageManager;
		Dictionary<string, string> tilesDict;
		List<string> tilemapList;

		int keyTile, keyTileMap;
		int px, py;
		int tx, ty;

		public TileManager(GraphicsDevice graphicsDevice, ImageManager imageManager)
		{
			this.graphicsDevice = graphicsDevice;
			this.imageManager = imageManager;
			tilesDict = new Dictionary<string, string>();
			tilemapList = new List<string>();
			keyTile = 0;
			keyTileMap = 0;
		}

		public void LoadContent(Texture2D texture)
		{
			imageManager.LoadContent(graphicsDevice, texture);
			px = texture.Width;
			py = texture.Height;
			tx = px / 8;
			ty = py / 8;
		}

		public void Process(bool save, SpriteBatch spriteBatch)
		{
			DeleteFiles(save);
			tilesDict.Clear();
			tilemapList.Clear();

			int out_index = 0;
			for (int iy = 0; iy < ty; iy++)
			{
				for (int ix = 0; ix < tx; ix++)
				{
					int inp_index = (iy * tx) + ix;

					string txtTile;
					var hash = imageManager.Process(inp_index, out_index);
					var dictTiles = tilesDict.FirstOrDefault(x => x.Value == hash);

					var exists = null != dictTiles.Key;
					if (exists)
					{
						txtTile = dictTiles.Key;
					}
					else
					{
						txtTile = keyTile.ToString().PadLeft(2, '0');
						tilesDict.Add(txtTile, hash);
						keyTile++;
						keyTileMap++;
						out_index++;
					}

					tilemapList.Add(txtTile);
					if (!exists)
					{
						imageManager.Draw(save, spriteBatch, txtTile);
					}
				}
			}

			//imageManager.DrawLarge(save, spriteBatch);
			SaveTileMap(save);
		}

		private void SaveTileMap(bool save)
		{
			if (!save)
			{
				return;
			}

			IList<string> lines = new List<string>();

			int index = 0;
			for (int iy= 0; iy < ty; iy++)
			{
				string line = String.Empty;
				for (int ix = 0; ix < tx; ix++)
				{
					line += tilemapList[index] + ",";
					index++;
				}
				line = line.Substring(0, line.Length - 1);
				lines.Add(line);
			}

			File.WriteAllLines("output/tileMap.txt", lines.ToArray());
		}

		private void DeleteFiles(bool save)
		{
			DirectoryInfo di = new DirectoryInfo("output");
			foreach (FileInfo fi in di.GetFiles())
			{
				fi.Delete();
			}
		}
	}
}
