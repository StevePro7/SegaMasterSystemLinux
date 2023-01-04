using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace ScreenShotTest
{
	public class AnGame : Microsoft.Xna.Framework.Game
	{
		string file = "section03_norm_64x32";

		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		Texture2D image;
		int high;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			
			Content.RootDirectory = "Content";
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			base.Initialize();
		}

		protected override void LoadContent()
		{
			// Create a new SpriteBatch, which can be used to draw textures.
			spriteBatch = new SpriteBatch(GraphicsDevice);

			image = Content.Load<Texture2D>(file);
			high = image.Height;

			graphics.PreferredBackBufferWidth = 8;
			graphics.PreferredBackBufferHeight = high;
			graphics.ApplyChanges();

			PresentationParameters pp = GraphicsDevice.PresentationParameters;
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
			graphics.GraphicsDevice.Clear(Color.Black);
			Draw(7);
			base.Draw(gameTime);
		}

		private void Draw(int col)
		{
			spriteBatch.Begin();
			spriteBatch.Draw(image, Vector2.Zero, new Rectangle(col * 8, 0,  8, image.Height), Color.White);
			spriteBatch.End();
		}
	}
}
