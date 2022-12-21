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
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;

		SpriteFont font, font2;
		Texture2D image;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			graphics.PreferredBackBufferWidth = 48;
			graphics.PreferredBackBufferHeight = 8;
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

			image = Content.Load<Texture2D>("39_55aaff");
			font = Content.Load<SpriteFont>("Emulogic");
			font2 = Content.Load<SpriteFont>("Emulogic2");
			PresentationParameters pp = GraphicsDevice.PresentationParameters;
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
			Draw(spriteBatch);
			base.Draw(gameTime);
		}

		private void Draw(SpriteBatch spriteBatch)
		{
			spriteBatch.Begin();
			spriteBatch.Draw(image, Vector2.Zero, Color.White);
			spriteBatch.DrawString(font, "A", Vector2.Zero, Color.Black);
			spriteBatch.DrawString(font2, "A", new Vector2(2, 1), Color.White);
			spriteBatch.End();
		}

	}
}
