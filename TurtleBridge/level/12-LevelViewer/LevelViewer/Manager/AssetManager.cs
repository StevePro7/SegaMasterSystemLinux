using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace LevelScreen
{
	public class AssetManager
	{
		public void LoadContent(ContentManager content, string level, int[] values)
		{
			Assets = new Texture2D[values.Length];
			for (int idx = 0; idx < values.Length; idx++)
			{
				int value = values[idx];
				var assetName = string.Format("level_{0}_{1}", level, value.ToString().PadLeft(2, '0'));
				Assets[idx] = content.Load<Texture2D>(assetName);
			}
		}

		public Texture2D[] Assets { get; private set; }
		public SpriteFont Font { get; private set; }
	}
}
