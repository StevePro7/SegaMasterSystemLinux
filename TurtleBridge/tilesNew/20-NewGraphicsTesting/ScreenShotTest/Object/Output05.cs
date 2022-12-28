using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class Output05 : Output, IOutput
	{
		public void Ctor(GraphicsDeviceManager graphics, AssetManager assetManager)
		{
			base.Ctor(assetManager);

			assets.Add(AssetType.font);
			assets.Add(AssetType.wave);
			assets.Add(AssetType.bridge);
			assets.Add(AssetType.island);
			assets.Add(AssetType.tree);
			assets.Add(AssetType.cloudL);
			assets.Add(AssetType.cloudS);
			assets.Add(AssetType.turtleF);
			assets.Add(AssetType.turtleH);
			assets.Add(AssetType.sign);
			assets.Add(AssetType.goal);

			Wide = 128;
			High = assetManager.GetHeights(assets.Count);
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
