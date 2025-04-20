using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace Game3
{
	public class MyGame : Game
	{
		GraphicsDeviceManager graphics;
		SpriteBatch spriteBatch;
		SpriteFont font;
		string _gpuName;
		string _profile;

		public MyGame()
		{
			graphics = new GraphicsDeviceManager(this);
			Content.RootDirectory = "Content";
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			_gpuName = GraphicsAdapter.DefaultAdapter.Description;
			GraphicsProfile profile = GraphicsDevice.GraphicsProfile;
			_profile = profile.ToString();
			base.Initialize();
		}

		protected override void LoadContent()
		{
			spriteBatch = new SpriteBatch(GraphicsDevice);
			font = Content.Load<SpriteFont>("File");
		}

		protected override void UnloadContent()
		{
			Content.Unload();
		}

		protected override void Update(GameTime gameTime)
		{
			if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
				Exit();

			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			GraphicsDevice.Clear(Color.CornflowerBlue);
			spriteBatch.Begin();
			spriteBatch.DrawString(font, _gpuName, new Vector2(20, 20), Color.Yellow);
			spriteBatch.DrawString(font, _profile, new Vector2(20, 50), Color.Yellow);
			spriteBatch.End();
			base.Draw(gameTime);
		}
	}
}
