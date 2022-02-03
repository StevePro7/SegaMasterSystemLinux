using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
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
		string file = "output";

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;
		Texture2D[] images;
		Texture2D[] colors;
		Texture2D pixel;
		private bool save;

		private int width;
		private int height;

		IDictionary<string, int> colorDict = new Dictionary<string, int>();
		//private int size = 1;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 184;
			graphics.PreferredBackBufferHeight = 88;
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

			images = new Texture2D[4];
			images[0] = Content.Load<Texture2D>("turtlebridge00");
			images[1] = Content.Load<Texture2D>("turtlebridge01");
			images[2] = Content.Load<Texture2D>("turtlebridge02");
			images[3] = Content.Load<Texture2D>("turtlebridge04");

			colors = new Texture2D[5];
			colors[0] = Content.Load<Texture2D>("00_000000");
			colors[1] = Content.Load<Texture2D>("02_aa0000");
			colors[2] = Content.Load<Texture2D>("03_aa0000");
			colors[3] = Content.Load<Texture2D>("39_55aaff");
			colors[4] = Content.Load<Texture2D>("3f_ffffff");

			Texture2D image = images[3];
			width = image.Width;
			height = image.Height;

			Color[] texColors = new Color[width * height];
			Color[] newColors = new Color[width * height];
			image.GetData(texColors);

			Color[] bluColors = new Color[16 * 16];
			Color[] redColors = new Color[16 * 16];
			Texture2D bluColor = colors[3];
			Texture2D redColor = colors[1];
			bluColor.GetData(bluColors);
			redColor.GetData(redColors);

			pixel = new Texture2D(graphics.GraphicsDevice, width, height);

			int i = 0;
			int j = 0;
			for (int y = 0; y < height; y++)
			{
				var outLine = String.Empty;
				for (int x = 0; x < width; x++)
				{
					i = j;
					var text = GetColorAtIndex(texColors, i);
					if (!colorDict.ContainsKey(text))
					{
						colorDict.Add(text, 0);
					}
					else
					{
						colorDict[text]++;
					}

					if (text == "000000")
					{
						newColors[i] = bluColors[0];
					}
					else if (text == "ff0000")
					{
						newColors[i] = redColors[0];
					}
					j++;
				}
			}

			pixel.SetData<Color>(newColors);

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			width = pp.BackBufferWidth;
			height = pp.BackBufferHeight;
			//renderTarget = new RenderTarget2D(GraphicsDevice, width, height, 1, GraphicsDevice.DisplayMode.Format);
			renderTarget = new RenderTarget2D(GraphicsDevice, width, height, false, SurfaceFormat.Color, DepthFormat.Depth24);
		}

		private string GetColorAtIndex(Color[] texColors, int index)
		{
			var texColor = texColors[index];
			var bytColor = new byte[3] { texColor.R, texColor.G, texColor.B };
			var strColor = BitConverter.ToString(bytColor);
			strColor = strColor.Replace("-", "");
			strColor = strColor.ToLower();
			//var valColor = "#" + strColor;
			//var dictColor = colorDict.FirstOrDefault(x => x.Value == valColor);
			//return dictColor.Key;
			return strColor;
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
			graphics.GraphicsDevice.Clear(Color.White);

			spriteBatch.Begin();
			spriteBatch.Draw(pixel, Vector2.Zero, Color.White);
			spriteBatch.End();
		}

	}
}
