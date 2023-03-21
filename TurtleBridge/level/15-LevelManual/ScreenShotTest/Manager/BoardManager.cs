using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.IO;

namespace ScreenShotTest
{
	public class BoardManager
	{
		private Game game;
		private AssetManager assetManager;
		private ConfigManager configManager;
		private FileManager fileManager;
		private InputManager inputManager;
		private LevelManager levelManager;
		private SelectorManager selectorManager;
		private Texture2D stripHorz, stripVert;
		private RenderTarget2D renderTarget;
		private SpriteFont font;
		private List<int> waveCount, wavePosns;
		private string world, round, point;
		private int wide, high;

		public BoardManager(Game game, AssetManager assetManager, ConfigManager configManager, FileManager fileManager, InputManager inputManager, LevelManager levelManager, SelectorManager selectorManager, int wide, int high)
		{
			this.game = game;
			this.assetManager = assetManager;
			this.configManager = configManager;
			this.fileManager = fileManager;
			this.inputManager = inputManager;
			this.levelManager = levelManager;
			this.selectorManager = selectorManager;
			this.wide = wide;
			this.high = high;

			world = configManager.NumWorld.ToString().PadLeft(2, '0');
			round = configManager.NumRound.ToString().PadLeft(2, '0');
			point = configManager.CheckPoint.ToString().PadLeft(2, '0');

			game.Window.Title = "CheckPoint-" + point;
			waveCount = new List<int>();
			wavePosns = new List<int>();
		}

		public void LoadContent(ContentManager myContentManager)
		{
			font = myContentManager.Load<SpriteFont>("Emulogic");
			stripHorz = myContentManager.Load<Texture2D>("StripHorz");
			stripVert = myContentManager.Load<Texture2D>("StripVert");
			renderTarget = new RenderTarget2D(game.GraphicsDevice, wide, high/2, false, SurfaceFormat.Color, DepthFormat.Depth24);
		}

		public void Update(SpriteBatch spriteBatch)
		{
			levelManager.Validate();
			ProcessWaveGaps();

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

			string prefix = "level";
			var filename = String.Format("level_{0}{1}", world, round);
			var filepath = "output/" + filename;
			var thefilename = filename + "_txt";
			string banktext = String.Format("{0}_{1}{2}_{3}", prefix, world, round, point);
			fileManager.Save(tiles, filepath, banktext, thefilename);
			filename = String.Format("{0}/{1}_{2}.png", filepath, filename, point);
			SaveScreen(spriteBatch, filename);
		}

		public void SaveScreen(SpriteBatch spriteBatch, string filename)
		{
			game.GraphicsDevice.SetRenderTarget(renderTarget);
			game.GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

			spriteBatch.Begin();
			Draw(spriteBatch);
			spriteBatch.End();

			game.GraphicsDevice.SetRenderTarget(null);
			Texture2D resolvedTexture = (Texture2D)renderTarget;
			Stream stream = File.Create(filename);
			resolvedTexture.SaveAsPng(stream, high, high);
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

			// Draw wave counts.
			if (wavePosns.Count > 0)
			{
				for (index = 0; index < wavePosns.Count; index++)
				{
					var cnt = waveCount[index];
					var xxx = wavePosns[index];
					int yyy = 0 == xxx ? 0 : xxx + 1;
					pos = new Vector2(yyy * 16, 20);
					spriteBatch.DrawString(font, cnt.ToString(), pos, Color.Yellow);
				}
			}

			// Draw screen numbers
			int numScreens = configManager.NumScreens;
			int dltScreens = wide / numScreens;
			int zzz = dltScreens / 2 - 64;
			for (int idx = 0; idx < numScreens; idx++)
			{
				pos = new Vector2(zzz, 0);
				spriteBatch.DrawString(font, (idx+1).ToString(), pos, Color.White);
				pos = new Vector2(zzz, 120);
				spriteBatch.DrawString(font, (idx + 1).ToString(), pos, Color.Black);
				zzz += dltScreens;
			}
		}

		private void ProcessWaveGaps()
		{
			waveCount.Clear();
			wavePosns.Clear();

			var length = levelManager.Tiles.Length;
			int count = 0;
			for (int index = length - 1; index >= 0; index--)
			{
				var element = levelManager.Tiles[index];
				if ((int)tile_type.tile_type_waves_block == element)
				{
					count++;
				}
				else
				{
					if (count > 0)
					{
						waveCount.Add(count);
						wavePosns.Add(index);
						count = 0;
					}
				}
			}
			if (count > 0)
			{
				waveCount.Add(count);
				wavePosns.Add(0);
				count = 0;
			}
		}

	}
}
