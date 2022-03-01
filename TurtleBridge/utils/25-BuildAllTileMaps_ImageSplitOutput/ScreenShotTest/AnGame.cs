using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System;

namespace ScreenShotTest
{
	/// <summary>
	/// This is the main type for your game
	/// </summary>
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;

		private IDictionary<string, Texture2D> dictionary;
		private string[] lines;
		private string line;
		private string file;
		private string abbr;
		private int cols, width;
		private int rows, height;
		private int length;
		private bool save;
		private string[,] grid;

		public AnGame()
		{
			var files = Directory.GetFiles("Content/tiles", "*", System.IO.SearchOption.TopDirectoryOnly);
			length = files.Length;

			file = ConfigurationManager.AppSettings["file"];
			abbr = ConfigurationManager.AppSettings["abbr"];

			int col = 0;
			int row = 0;
			lines = File.ReadAllLines("files/" + file + ".csv");
			line = lines[0];
			rows = lines.Length;

			if (line.EndsWith(","))
			{
				line = line.Substring(0, line.Length - 1);
			}
			var datas = line.Split(new char[] { ',' });
			cols = datas.Length;

			row = 0;
			grid = new string[rows, cols];
			foreach (var line in lines)
			{
				col = 0;
				var text = line;
				if (line.EndsWith(","))
				{
					text = text.Substring(0, line.Length - 1);
				}

				datas = text.Split(new char[] { ',' });
				foreach (var data in datas)
				{
					grid[row, col] = data.Trim().PadLeft(3, '0');
					col++;
				}

				row++;
			}

			width = 8;
			height = rows * 8;
			
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = width;
			graphics.PreferredBackBufferHeight = height;
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
			//save = true;
			if (null != ConfigurationManager.AppSettings["save"])
			{
				save = Convert.ToBoolean(ConfigurationManager.AppSettings["save"]);
			}

			IsMouseVisible = true;
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

			dictionary = new Dictionary<string, Texture2D>();
			for (int i = 0; i < length; i++)
			{
				var file = i.ToString().PadLeft(3, '0');
				dictionary[file] = Content.Load<Texture2D>("tiles/" + file);
			}

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
				if (!Directory.Exists(abbr))
				{
					Directory.CreateDirectory("output/" + file);
				}
				for (int col = 0; col < cols; col++)
				{
					GraphicsDevice.SetRenderTarget(renderTarget);
					GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

					Draw(col);
					base.Draw(gameTime);

					GraphicsDevice.SetRenderTarget(null);
					Texture2D resolvedTexture = (Texture2D)renderTarget;
					var name = abbr + "-" + col.ToString().PadLeft(2, '0') + ".png";
					Stream stream2 = File.Create("output/" + file + "/" + name);
					resolvedTexture.SaveAsPng(stream2, width, height);
				}

				Exit();
			}
			else
			{
				Draw(0);
				base.Draw(gameTime);
			}
		}

		private void Draw(int col)
		{
			graphics.GraphicsDevice.Clear(Color.Black);
			spriteBatch.Begin();

			for (int row = 0; row < rows; row++)
			{
				var key = grid[row, col];
				Vector2 pos = new Vector2(0, row * 8);
				Texture2D image = dictionary[key];

				spriteBatch.Draw(image, pos, Color.White);
			}

			spriteBatch.End();
		}

	}
}
