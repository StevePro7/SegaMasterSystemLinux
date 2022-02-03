using System;
using System.Collections.Generic;
using System.IO;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace ScreenShotTest
{
	/// <summary>
	/// This is the main type for your game
	/// </summary>
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		const string version = "01";

		string file = "linesXX_08x01";

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;
		ColorManager colorManager;
		private const int offset = 0;

		private bool save;

		private int width;
		private int height;

		private int size = 1;
		private string[] lines;
		private string[] lines2;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 32 * size;
			graphics.PreferredBackBufferHeight = 24 * size;
			Content.RootDirectory = "Content";
		}

		/// <summary>
		/// Allows the game to perform any initialization it needs to before starting to run.
		/// This is where it can query for any required services and load any non-graphic
		/// related content.  Calling base.Initialize will enumerate through any components
		/// and initialize them as well.
		/// </summary>
		protected override void Initialize()
		{
			save = false;
			//if (null != ConfigurationManager.AppSettings["save"])
			//{
			//	save = Convert.ToBoolean(ConfigurationManager.AppSettings["save"]);
			//}
			save = true;
			IsMouseVisible = true;
			colorManager = new ColorManager();
			base.Initialize();
		}

		/// <summary>
		/// LoadContent will be called once per game and is the place to load
		/// all of your content.
		/// </summary>
		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);
			colorManager.Load(this);
			
			lines = File.ReadAllLines("turtleSS_32x24.csv");
			lines2 = File.ReadAllLines("attemp" + version + ".csv");

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			width = pp.BackBufferWidth;
			height = pp.BackBufferHeight;
			//renderTarget = new RenderTarget2D(GraphicsDevice, width, height, 1, GraphicsDevice.DisplayMode.Format);
			renderTarget = new RenderTarget2D(GraphicsDevice, width, height, false, SurfaceFormat.Color, DepthFormat.Depth24);
		}

		/// <summary>
		/// UnloadContent will be called once per game and is the place to unload
		/// all content.
		/// </summary>
		protected override void UnloadContent()
		{
			Content.Unload();
		}

		/// <summary>
		/// Allows the game to run logic such as updating the world,
		/// checking for collisions, gathering input, and playing audio.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Update(GameTime gameTime)
		{
			// Allows the game to exit
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
				this.Exit();

			base.Update(gameTime);
		}

		/// <summary>
		/// This is called when the game should draw itself.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Draw(GameTime gameTime)
		{
			if (save)
			{
				//GraphicsDevice.SetRenderTarget(0, renderTarget);
				GraphicsDevice.SetRenderTarget(renderTarget);
				GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

				Draw();
				base.Draw(gameTime);

				GraphicsDevice.SetRenderTarget(null);
				Texture2D resolvedTexture = (Texture2D)renderTarget;
				file = file.Replace("XX", version);
				Stream stream = File.Create(file + ".png");
				resolvedTexture.SaveAsPng(stream, width, height);
		
				Exit();
			}
			else
			{
				Draw();
				base.Draw(gameTime);
			}
		}

		private void Draw()
		{
			//graphics.GraphicsDevice.Clear(Color.Black);
			DrawTurtle();
			DrawWing(8, 1);
		}

		private void DrawWing(int bx, int by)
		{
			int px = 0;
			int py = 0;
			int tx, ty = 0;
			
			spriteBatch.Begin();

			ty = 0;
			foreach (var line in lines2)
			{
				tx = 0;
				var texts = line.Split(new char[] { ',' });
				var len = texts.Length;
				for (int i = 0; i < len; i++)
				{
					px = (bx * size) + (tx * size);
					py = (by * size) + (ty * size);

					//var text = texts[i].ToLower();
					var text = texts[i];
					if (text == "X")
					{
						text = "#01";
					}
					if (text == "W")
					{
						text = "#3f";
					}
					if (text.Length == 3)
					{
						var image = colorManager.Palette[text];
						spriteBatch.Draw(image, new Vector2(px, py), new Rectangle(0, 0, size, size), Color.White);
					}
					
					tx++;
				}
				ty++;
			}

			spriteBatch.End();
		}


		private void DrawTurtle()
		{
			int px = 0;
			int py = 0;
			int tx, ty = 0;
			spriteBatch.Begin();

			ty = 0;
			//var line = lines[0];
			foreach (var line in lines)
			{
				tx = 0;
				var texts = line.Split(new char[] { ',' });
				var len = texts.Length;
				if (len != 32)
				{
					len = 32;
				}
				for (int i = 0; i < len; i++)
				{
					px = tx * size;
					py = ty * size;

					var text = texts[i].ToLower();
					if (text.Length == 0)
					{
						text = "#39";
					}
					if (text.Length == 3)
					{
						var image = colorManager.Palette[text];
						spriteBatch.Draw(image, new Vector2(px, py), new Rectangle(0, 0, size, size), Color.White);
					}

					tx++;
				}
				ty++;
			}

			spriteBatch.End();
		}
	}
}
