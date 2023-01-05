using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output02b : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);
			assets.Add(AssetType.font);
			assets.Add(AssetType.titlePlay);

			Wide = 192;
			High = 32 + 24;
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			int x = 0;
			int y = 0;
			int idx = 0;
			Color color;
			foreach (var asset in assets)
			{
				color = Color.White;
				var image = assetManager.Images[(int)asset];
				var pos = new Vector2(x, y);
				spriteBatch.Draw(image, pos, color);
				y += image.Height;
				idx++;
			}
		}
	}
}
