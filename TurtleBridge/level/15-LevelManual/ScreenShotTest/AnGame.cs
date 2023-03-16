using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System.IO;

namespace ScreenShotTest
{
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		const string file = "output";

		private AssetManager assetManager;
		private ConfigManager configManager;
		private FileManager fileManager;
		private BoardManager boardManager;
		private InputManager inputManager;
		private LevelManager levelManager;
		private SelectorManager selectorManager;
		private TilesManager tilesManager;

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		RenderTarget2D renderTarget;
		private int wide, high;
		//private bool save;	

		public AnGame()
		{
			Logger.Initialize();
			configManager = new ConfigManager();
			wide = configManager.NumScreens * 128;
			//wide = 1024 + 512;// fileManager.Objects.Count * 32;
			//wide = 256;
			high = 224;

			assetManager = new AssetManager();
			tilesManager = new TilesManager(configManager, wide);
			fileManager = new FileManager(configManager, tilesManager, wide);
			inputManager = new InputManager(wide, high);
			selectorManager = new SelectorManager(inputManager, wide, high);
			selectorManager.Initialize();
			
			levelManager = new LevelManager(this, assetManager, configManager, fileManager, inputManager, selectorManager, wide, high);
			boardManager = new BoardManager(this, assetManager, configManager, fileManager, inputManager, levelManager, selectorManager, wide, high);

			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = wide;
			graphics.PreferredBackBufferHeight = high;
			Content.RootDirectory = "Content";
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			tilesManager.Initialize("MyTiles.csv");
			fileManager.Initialize();
			
			base.Initialize();
			//save = false;
			//save = true;
		}

		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);
			assetManager.LoadContent(Content);
			boardManager.LoadContent(Content);
			levelManager.LoadContent();

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			wide = pp.BackBufferWidth;
			high= pp.BackBufferHeight;
			renderTarget = new RenderTarget2D(GraphicsDevice, wide, high/2, false, SurfaceFormat.Color, DepthFormat.Depth24);
		}

		protected override void UnloadContent()
		{
			Content.Unload();
		}

		protected override void Update(GameTime gameTime)
		{
			// Allows the game to exit
			if (Keyboard.GetState().IsKeyDown(Keys.Escape))
			{
				Exit();
			}

			inputManager.Update();
			if (inputManager.KeyHold(Keys.L))
			{
				tilesManager.Initialize("MyTiles.csv");
			}
			if (inputManager.KeyHold(Keys.T))
			{
				tilesManager.Initialize2();
			}
			boardManager.Update(spriteBatch);
			levelManager.Update();
			selectorManager.Update();
			inputManager.Reset();
			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			Draw();
			base.Draw(gameTime);

			// TODO delete!!
			//if (save)
			//{
			//	//GraphicsDevice.SetRenderTarget(renderTarget);
			//	//GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

			//	//Draw();
			//	//base.Draw(gameTime);

			//	//GraphicsDevice.SetRenderTarget(null);
			//	//Texture2D resolvedTexture = (Texture2D)renderTarget;
			//	//Stream stream = File.Create(file + ".png");
			//	//resolvedTexture.SaveAsPng(stream, wide, high);
			//	//Exit();
			//}
			//else
			//{
			//	Draw();
			//	base.Draw(gameTime);
			//}
			// TODO delete!!
		}

		private void Draw()
		{
			graphics.GraphicsDevice.Clear(Color.CornflowerBlue);
			spriteBatch.Begin();
			boardManager.Draw(spriteBatch);
			spriteBatch.End();
		}

	}

}