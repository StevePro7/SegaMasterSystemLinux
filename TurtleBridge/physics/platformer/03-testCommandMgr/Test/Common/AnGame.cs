using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using WindowsGame.Master;

namespace WindowsGame.Common
{
	public class AnGame : Game
	{
		private readonly GraphicsDeviceManager graphics;

		public AnGame()
		{
			graphics = new GraphicsDeviceManager(this);
			Registration.Initialize();

			var manager = GameFactory.Resolve();
			MyGame.Construct(manager);
		}

		protected override void Initialize()
		{
			Engine.Initialize(this, graphics);
			MyGame.Initialize();

			base.Initialize();
		}

		protected override void LoadContent()
		{
			MyGame.LoadContent();
			base.LoadContent();
		}

		protected override void UnloadContent()
		{
			MyGame.UnloadContent();
			base.UnloadContent();
		}

		protected override void Update(GameTime gameTime)
		{
			MyGame.Update(gameTime);
			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			MyGame.Draw();
			base.Draw(gameTime);
		}
	}
}
