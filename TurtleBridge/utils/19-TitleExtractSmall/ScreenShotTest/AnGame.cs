using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace ScreenShotTest
{
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		string file = "output";

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;
		Texture2D[] images;
		Texture2D image;
		Texture2D pixel;
		private bool save;

		private int width;
		private int height;

		IDictionary<string, Texture2D> imagetDict = new Dictionary<string, Texture2D>();
		IDictionary<string, int> colorDict = new Dictionary<string, int>();
		//private int size = 1;

		public AnGame()
		{
			width = 256;
			height = 32;
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = width;// 184;
			graphics.PreferredBackBufferHeight = height;// 88;
			Content.RootDirectory = "Content";
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
			base.Initialize();
		}

		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);
			images = new Texture2D[3];
			images[0] = Content.Load<Texture2D>("lil");
			images[1] = Content.Load<Texture2D>("evel");
			images[2] = Content.Load<Texture2D>("knievel");
			image = Content.Load<Texture2D>("title_org");

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
			
			spriteBatch.Draw(images[2], new Vector2(0, 0), Color.White);
			spriteBatch.Draw(images[2], new Vector2(128, 0), Color.White);
			spriteBatch.Draw(images[0], new Vector2(0, 0), Color.White);
			spriteBatch.End();
		}

		
	}
}
