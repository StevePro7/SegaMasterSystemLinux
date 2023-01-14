using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System;

namespace ScreenShotTest
{
	public class AssetManager
	{
		private string[] names =
		{
			"sprites_partial",
			"sprite_top01",
			"sprite_top02",
			"sprite_top03",
			"sprite_top04",

			"sprite_flip01",
			"sprite_flip02",
			"sprite_flip03",
			"sprite_flip04",
			"sprite_flip05",
			"sprite_flip06",
			"sprite_flip07",
			"sprite_flip08",

			"sprite_plat01",
			"sprite_plat02",
			"sprite_plat03",
			"sprite_plat04",

			"01-sprite_left_08_256",
			"01-sprite_rght_08_256",
			"92-sprite_left_64",
			"92-sprite_rght_64",
			"94-sprite_left_128",
			"94-sprite_rght_128",
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
