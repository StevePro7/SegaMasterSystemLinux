using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
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
			tilesDict.Clear();
			tilemapList.Clear();

			int ix, iy;
			ix = 0;
			iy = 0;
			int out_index = 0;
			int inp_index = (iy * ty * 8) + (ix * 8);

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
				keyTileMap++;
			}

			tilemapList.Add(txtTile);


			// TODO 
			//graphics.PreferredBackBufferWidth = width;
			//graphics.PreferredBackBufferHeight = height;

			if (!exists)
			{
				imageManager.Draw(save, spriteBatch, txtTile);
			}
		}
	}
}
