using Microsoft.Xna.Framework;
using System;

namespace Test
{
	public interface IScreen
	{
		void Initialize();
		void LoadContent();
		Int32 Update(GameTime gameTime);
		void Draw();
	}

	public class BaseScreen
	{
	}
}
