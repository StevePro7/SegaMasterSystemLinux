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
		const string file = "skateboard01";

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;
		//private Texture2D image;
		//private Texture2D horz, vert;
		//private Texture2D pixel;
		private const int offset = 0;

		private bool save;

		private int width;
		private int height;

		private IDictionary<string, Texture2D> dict = new Dictionary<string, Texture2D>();
		private int size = 8;
		private int wide = 24;
		private int high = 32;
		private string[] lines;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = wide * size;
			graphics.PreferredBackBufferHeight = high * size;
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
			//save = true;
			//IsMouseVisible = true;
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
			dict["#00"] = Content.Load<Texture2D>("00_000000");
			dict["#01"] = Content.Load<Texture2D>("01_550000");
			dict["#02"] = Content.Load<Texture2D>("02_aa0000");
			dict["#03"] = Content.Load<Texture2D>("03_ff0000");

			dict["#08"] = Content.Load<Texture2D>("08_00aa00");
			dict["#0B"] = Content.Load<Texture2D>("0b_ffaa00");
			dict["#0C"] = Content.Load<Texture2D>("0c_00ff00");
			dict["#0F"] = Content.Load<Texture2D>("0f_ffff00");

			dict["#16"] = Content.Load<Texture2D>("16_aa5555");
			dict["#1B"] = Content.Load<Texture2D>("1b_ffaa55");

			dict["#2A"] = Content.Load<Texture2D>("2a_aaaaaa");
			dict["#2B"] = Content.Load<Texture2D>("2b_ffaaaa");

			dict["#30"] = Content.Load<Texture2D>("30_0000ff");
			dict["#39"] = Content.Load<Texture2D>("39_55aaff");
			dict["#3F"] = Content.Load<Texture2D>("3f_ffffff");
		
			lines = File.ReadAllLines(file + ".csv");


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

				//GraphicsDevice.SetRenderTarget(0, null);
				GraphicsDevice.SetRenderTarget(null);
				//Texture2D resolvedTexture = renderTarget.GetTexture();
				Texture2D resolvedTexture = (Texture2D)renderTarget;
				//resolvedTexture.Save("00.jpg", ImageFileFormat.Jpg);
				Stream stream = File.Create(file + ".png");
				//resolvedTexture.SaveAsJpeg(stream, width, height);
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
			int px = 0;
			int py = 0;
			int tx, ty = 0;
			graphics.GraphicsDevice.Clear(Color.Black);
			//graphics.GraphicsDevice.Clear(Color.White);
			spriteBatch.Begin();

			ty = 0;
			//var line = lines[0];
			foreach (var line in lines)
			{
				tx = 0;
				var texts = line.Split(new char[] { ',' });
				var len = texts.Length;
				for (int i = 0; i < len; i++)
				{
					px = tx * size;
					py = ty * size;

					var text = texts[i];
					if (text.Length == 0)
					{
						text = "#39";
					}
					if (text == "#31")
					{
						text = "#01";
					}
					spriteBatch.Draw(dict[text], new Vector2(px, py), Color.White);
					tx++;
				}
				ty++;
			}

			spriteBatch.End();
		}

	}

}