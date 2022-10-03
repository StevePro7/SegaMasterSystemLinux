using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.IO;

namespace ScreenShotTest
{
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		const string file = "skate03";

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;
		PaletteManager paletteManager;
		private const int offset = 0;

		private bool save;

		private int width;
		private int height;

		private int size = 8;
		private int wide = 32;
		private int high = 32;
		private string[] lines;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = wide * size;
			graphics.PreferredBackBufferHeight = high * size;
			Content.RootDirectory = "Content";
			paletteManager = new PaletteManager();
		}

		protected override void Initialize()
		{
			save = false;
			//if (null != ConfigurationManager.AppSettings["save"])
			//{
			//	save = Convert.ToBoolean(ConfigurationManager.AppSettings["save"]);
			//}
			save = true;
			IsMouseVisible = true;
			paletteManager.Initialize();
			base.Initialize();
		}

		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);
			paletteManager.LoadContent(Content);
			lines = File.ReadAllLines(file + ".csv");

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			width = pp.BackBufferWidth;
			height = pp.BackBufferHeight;
			//renderTarget = new RenderTarget2D(GraphicsDevice, width, height, 1, GraphicsDevice.DisplayMode.Format);
			renderTarget = new RenderTarget2D(GraphicsDevice, width, height, false, SurfaceFormat.Color, DepthFormat.Depth24);
		}

		protected override void UnloadContent()
		{
			Content.Unload();
		}

		protected override void Update(GameTime gameTime)
		{
			// Allows the game to exit
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
				this.Exit();

			base.Update(gameTime);
		}

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
						//text = "#39";
						text = "#00";
					}

					var image = paletteManager.Dict[text];
					spriteBatch.Draw(image, new Vector2(px, py), Color.White);
					tx++;
				}
				ty++;
			}

			spriteBatch.End();
		}

	}

}