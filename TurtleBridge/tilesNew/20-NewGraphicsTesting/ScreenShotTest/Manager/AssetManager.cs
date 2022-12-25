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
			"section01_left_64x80",			// bridge
			"section03_norm_64x32",			// island
			"section04_norm_64x80",			// tree
			"cloud02_48x24",
			"cloud01_32x24",
			"flying_turtle01_32x24",
			//"flying_turtle02_32x24",
			"flying_turtle02_32x24",
			//"hover_turtleBB00_32x24",
			"sign_send",
			"sign_goal",
		};

		public void LoadContent(ContentManager content)
		{
			var myEnumMemberCount = Enum.GetNames(typeof(AssetType)).Length;
			Images = new Texture2D[myEnumMemberCount];

			for (int index = 0; index < myEnumMemberCount; index++)
			{
				var name = nam`es[index];
				Images[index] = content.Load<Texture2D>(name);
			}
		}

		public Texture2D[] Images { get; private set; }
	}
}
