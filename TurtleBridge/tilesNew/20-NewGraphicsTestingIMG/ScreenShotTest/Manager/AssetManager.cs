using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace ScreenShotTest
{
	public class AssetManager
	{
		private string[] names =
		{
			"font_tiles_yellow",
			"wave_strip",
			"waves_block_32x112",

			"section03_norm_64x32",
			"section04_norm_64x80",
			"section03_norm_64x32_tree",

			"hover_turtleAA00_32x24_00",
			"hover_turtleAA00_32x24_01",

			"flying_turtle01_32x24_00",
			"flying_turtle01_32x24_01",
			"flying_turtle01_32x24_02",
			"flying_turtle01_32x24_03",

			"section03_open_64x32_01",
			"section03_open_64x32_02",
			"section03_open_64x32_03",

			"section02_left_64x48",

			"cloud01_32x24",
			"cloud02_48x24",
		};

		protected int[] heights = { 0 };
			
		public void LoadContent(ContentManager content)
		{
			var myEnumMemberCount = Enum.GetNames(typeof(AssetType)).Length;
			Images = new Texture2D[myEnumMemberCount];

			for (int index = 0; index < myEnumMemberCount; index++)
			{
				var name = names[index];
				Images[index] = content.Load<Texture2D>(name);
			}
		}

		public int GetHeights(int numAssets)
		{
			int height = 0;
			for (int idx = 0; idx < numAssets; idx++)
			{
				height += heights[idx];
			}

			return height;
		}

		public Texture2D[] Images { get; private set; }
	}
}
