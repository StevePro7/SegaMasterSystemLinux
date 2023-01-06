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
			"font_tiles",
			"block",
			"titlescreen",
			"wave_strip",
			//"section01_left_64x80",			// bridge big
			//"section02_left_64x48",			// bridge sml	LEFT
			"section02_rght_64x48",			// bridge sml	RIGHT
			"section03_norm_64x32",			// island big
			"section04_norm_64x80",			// tree
			"cloud02_48x24",
			"cloud01_32x24",
			"flying_turtle01_32x24",
			//"flying_turtle02_32x24",
			"hover_turtleAA00_32x24",
			//"hover_turtleBB00_32x24",
			"sign_send",
			"sign_goal",
			"titlescreenPlay",
			//"wave_strip_01",
			//"wave_strip_02",
			"font_tiles_00",
			"font_tiles_01",
			"section04_norm_64x64_side",
			"wave_strip_64",
			"wave_strip_65",
			"wave_strip_66",
			"wave_strip_67",
			"wave_strip_68",
			"wave_strip_69",
			"wave_strip_70",
			"wave_strip_71",
			"wave_strip_72",
			"wave_strip_73",
			"DrawCol00_16",
			"DrawCol01_16",
			"DrawCol02_16",
			"DrawCol03_16",
			"section02_mid01l",
			"section02_mid01lr",
			"section02_mid02l",
			"section02_mid02r",
			"waves_block_32x112",
			"waves_block_32x128",
		};

		protected int[] heights =
		{
			32,
			8,
			80,
			32,
			48,
			24,
			24,
			24,
			24,
			24,
			24,
			24,
			//8,
			//8,
			64,
			64,
			64,
			8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
			128, 128, 128, 128,
			32, 32, 32, 32,
			112, 128
		};
			
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
