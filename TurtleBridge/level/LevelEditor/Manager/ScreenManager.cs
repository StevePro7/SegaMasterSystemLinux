using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LevelEditor
{
	public class ScreenManager
	{
		private BoardManager boardManager;
		private InputManager inputManager;

		GraphicsDeviceManager graphics;
		private SpriteBatch spriteBatch;

		public ScreenManager(
			BoardManager boardManager,
			InputManager inputManager
			)
		{
			this.boardManager = boardManager;
			this.inputManager = inputManager;
		}

		public void LoadContent(
			GraphicsDeviceManager graphics,
			SpriteBatch spriteBatch)
		{
			this.graphics = graphics;
			this.spriteBatch = spriteBatch;
		}

		public void Update(GameTime gameTime)
		{
			inputManager.Update();
		}

		public void Draw()
		{
			graphics.GraphicsDevice.Clear(Color.CornflowerBlue);
			spriteBatch.Begin();
			boardManager.Draw(spriteBatch);
			spriteBatch.End();
		}
	}
}
