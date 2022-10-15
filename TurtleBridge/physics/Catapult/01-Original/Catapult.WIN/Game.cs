using Microsoft.Xna.Framework;

namespace CatapultMiniGame
{
	public class CatapultGame : Game
	{
		GraphicsDeviceManager graphics;

		public CatapultGame()
		{
			graphics = new GraphicsDeviceManager(this);
		}

		protected override void Initialize()
		{
			IsMouseVisible = true;
			base.Initialize();
		}

		protected override void LoadContent()
		{
		}

		protected override void UnloadContent()
		{
			Content.Unload();
		}

		protected override void Update(GameTime gameTime)
		{
			base.Update(gameTime);
		}

		protected override void Draw(GameTime gameTime)
		{
			base.Draw(gameTime);
		}
	}
}
