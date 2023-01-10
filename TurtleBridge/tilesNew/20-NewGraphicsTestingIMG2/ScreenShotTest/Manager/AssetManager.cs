using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace ScreenShotTest
{
	public class AssetManager
	{
		private string[] names =
		{
			"00-font_tiles_yellow_192x24_05",
			"00-font_tiles_yellow_192x24_06",
			"01-section02_left_64x112",
			"01-section02_left_goal00",
			"01-section02_left_sign01",
			"01-waves_block_32x112",
			"02-section03_norm_64x32",
			"02-section03_open_64x32_02",
			"02-section03_open_64x32_03",
			"03-section03_tree_64x32_01",
			"03-section03_tree_64x32_02",
			"03-section03_tree_64x32_03",
			"04-flying_turtle01_32x24_00",
			"04-flying_turtle01_32x24_01",
			"04-flying_turtle01_32x24_02",
			"04-flying_turtle01_32x24_03",
			"04-hover_turtleAA00_32x24_00",
			"04-hover_turtleAA00_32x24_01",
			"05-clouds_192x24",
			"06-titlescreenPlay",
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
