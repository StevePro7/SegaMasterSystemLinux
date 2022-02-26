using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace LevelEditor
{
	/// <summary>
	/// This is the main type for your game
	/// </summary>
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;

		AssetManager assetManager;
		BoardManager boardManager;
		ConfigManager configManager;
		InputManager inputManager;
		MappingManager mappingManager;
		ScreenManager screenManager;
		SelectorManager selectorManager;

		private int width;
		private int height;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			
			Content.RootDirectory = "Content";
			Logger.Initialize();

			assetManager = new AssetManager();
			configManager = new ConfigManager();
			inputManager = new InputManager(configManager);
			mappingManager = new MappingManager();

			selectorManager = new SelectorManager(inputManager);
			boardManager = new BoardManager(assetManager, configManager, inputManager, mappingManager, selectorManager);

			screenManager = new ScreenManager(
				boardManager,
				inputManager,
				selectorManager
				);
		}

		/// <summary>
		/// Allows the game to perform any initialization it needs to before starting to run.
		/// This is where it can query for any required services and load any non-graphic
		/// related content.  Calling base.Initialize will enumerate through any components
		/// and initialize them as well.
		/// </summary>
		protected override void Initialize()
		{
			//save = false;
			//if (null != ConfigurationManager.AppSettings["save"])
			//{
			//	save = Convert.ToBoolean(ConfigurationManager.AppSettings["save"]);
			//}
			//save = true;
			IsMouseVisible = true;

			assetManager.Initialize();
			configManager.Initialize();
			boardManager.Initialize();
			inputManager.Initialize();
			mappingManager.Initialize();
			selectorManager.Initialize();

			graphics.PreferredBackBufferWidth = configManager.ScreenWide;
			graphics.PreferredBackBufferHeight = configManager.ScreenBott;
			graphics.ApplyChanges();

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

			assetManager.LoadContent(Content);
			mappingManager.LoadContent();
			screenManager.LoadContent(graphics, spriteBatch);


			PresentationParameters pp = GraphicsDevice.PresentationParameters;
			width = pp.BackBufferWidth;
			height = pp.BackBufferHeight;
			//renderTarget = new RenderTarget2D(GraphicsDevice, width, height, 1, GraphicsDevice.DisplayMode.Format);
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
			{
				Exit();
			}

			screenManager.Update(gameTime);
			base.Update(gameTime);
		}

		/// <summary>
		/// This is called when the game should draw itself.
		/// </summary>
		/// <param name="gameTime">Provides a snapshot of timing values.</param>
		protected override void Draw(GameTime gameTime)
		{
			//if (save)
			//{
			//	//GraphicsDevice.SetRenderTarget(0, renderTarget);
			//	GraphicsDevice.SetRenderTarget(renderTarget);
			//	GraphicsDevice.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, Color.CornflowerBlue, 1, 0);

			//	Draw();
			//	base.Draw(gameTime);

			//	//GraphicsDevice.SetRenderTarget(0, null);
			//	GraphicsDevice.SetRenderTarget(null);
			//	//Texture2D resolvedTexture = renderTarget.GetTexture();
			//	Texture2D resolvedTexture = (Texture2D)renderTarget;
			//	//resolvedTexture.Save("00.jpg", ImageFileFormat.Jpg);
			//	Stream stream = File.Create("test" + ".png");
			//	//resolvedTexture.SaveAsJpeg(stream, width, height);
			//	resolvedTexture.SaveAsPng(stream, width, height);
		
			//	Exit();
			//}
			//else
			{
				Draw();
				base.Draw(gameTime);
			}
		}

		private void Draw()
		{
			screenManager.Draw();
		}

	}

}