﻿using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace ScreenShotTest
{
	public class BoardManager
	{
		private Game game;
		private AssetManager assetManager;
		private FileManager fileManager;
		private InputManager inputManager;
		private LevelManager levelManager;
		private SelectorManager selectorManager;
		private Texture2D stripHorz, stripVert;
		private int wide, high;

		public BoardManager(Game game, AssetManager assetManager, FileManager fileManager, InputManager inputManager, LevelManager levelManager, SelectorManager selectorManager, int wide, int high)
		{
			this.game = game;
			this.assetManager = assetManager;
			this.fileManager = fileManager;
			this.inputManager = inputManager;
			this.levelManager = levelManager;
			this.selectorManager = selectorManager;
			this.wide = wide;
			this.high = high;

			game.Window.Title = "Editor";
		}

		public void LoadContent(ContentManager myContentManager)
		{
			stripHorz = myContentManager.Load<Texture2D>("StripHorz");
			stripVert = myContentManager.Load<Texture2D>("StripVert");
		}

		public void Update()
		{
			levelManager.Validate();
			if (!inputManager.KeyHold(Keys.Enter))
			{
				return;
			}

			levelManager.Validate();
			//if (!levelManager.IsValid)
			//{
			//	var col = levelManager.BadCols % 8;
			//	var scr = levelManager.BadCols / 8;
			//	var msg = $"ERROR screen:{scr+1} column:{col+1}";
			//	game.Window.Title = msg;
			//	return;
			//}

			game.Window.Title = "EValid";
			levelManager.UpdateTrees();
			var tiles = levelManager.Tiles;
			fileManager.Save(tiles);
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			Texture2D image;
			Vector2 pos = new Vector2(0, 0);
			int x = 0;
			// Draw waves
			for (int box = 0; box < wide; box += 32)
			{
				image = assetManager.ImagesLarge[(int)AssetType.AwavesBlock];
				spriteBatch.Draw(image, new Vector2(x, 112), Color.White);
				x += 32;
			}

			// Draw level.
			levelManager.Draw(spriteBatch);

			// Draw selectors
			pos = new Vector2(128, 112);
			int delta = 16;
			int index;
			for (index = 0; index < 16; index++)
			{
				image = assetManager.ImagesLarge[index];
				delta = 16;
				spriteBatch.Draw(image, new Vector2(pos.X + delta, pos.Y), Color.White);
				pos.X += 64;
			}
			delta = 16;
			pos = new Vector2(128, 112);
			spriteBatch.Draw(assetManager.ImagesLarge[(int)AssetType.QbridgeSideFlip], new Vector2(pos.X + delta, pos.Y), Color.White);
			pos.X += 1024;
			spriteBatch.Draw(assetManager.ImagesLarge[(int)AssetType.RbridgeSignGoal], new Vector2(pos.X + delta, pos.Y), Color.White);
			pos.X += 64;
			spriteBatch.Draw(assetManager.ImagesLarge[(int)AssetType.SislandSignGoal], new Vector2(pos.X + delta, pos.Y), Color.White);
			pos = new Vector2(384, 112);
			spriteBatch.Draw(assetManager.ImagesLarge[(int)AssetType.FislandLeft], new Vector2(pos.X + delta, pos.Y), Color.White);
			pos = new Vector2(384 + 64, 112);
			spriteBatch.Draw(assetManager.ImagesLarge[(int)AssetType.EislandMidd], new Vector2(pos.X + delta, pos.Y), Color.White);

			// Draw selector
			pos = new Vector2(16, 112);
			image = assetManager.ImagesLarge[selectorManager.Selector];
			spriteBatch.Draw(image, pos, Color.White);

			// Draw lines
			for (int col = 0; col < wide; col += 16)
			{
				spriteBatch.Draw(stripVert, new Vector2(col, 0), new Rectangle(0, 0, 2, 112), Color.White);
				if (col > 0 && 0 == col % 64)
				{
					spriteBatch.Draw(stripVert, new Vector2(col, 112), new Rectangle(0, 0, 2, 112), Color.White);
				}
				if (col > 0 && 0 == col % 128)
				{
					spriteBatch.Draw(stripVert, new Vector2(col, 0), new Rectangle(0, 0, 2, 112), Color.Black);
				}
			}
			for (int row = 0; row < wide; row += 512)
			{
				spriteBatch.Draw(stripHorz, new Vector2(row, 112), Color.Black);
			}

		}
	}
}