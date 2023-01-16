using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace ScreenShotTest
{
	public class AssetManager
	{
		public void LoadContent(ContentManager myContentManager)
		{
			Images = new List<Texture2D>();
			ImagesLarge = new List<Texture2D>();
			ImagesSmall = new List<Texture2D>();

			var files = GetFiles();
			for (int index = 0; index < files.Length; index++)
			{
				var file = files[index];
				var temp = "Large/" + file;
				var image = myContentManager.Load<Texture2D>(temp);
				Images.Add(image);
			}
		}

		private string[] GetFiles()
		{
			return new string[]
			{
				"AwavesBlock",
				"BbridgeMidd",
				"CbridgeSide",
				"DbridgeSign",
				"EislandTiny",
				"FislandLeft",
				"GislandRght",
				"HislandMidd",
				"IislandTree",
				"JislandSign",
				"KturtleSea1",
				"LturtleSea2",
				"MturtleFly1",
				"NturtleFly2",
				"OturtleFly3",
				"PturtleFly4",
				"QbridgeSideFlip",
				"RbridgeSignGoal",
			};
		}

		public List<	Texture2D> Images { get; private set; }
		public List<Texture2D> ImagesLarge { get; private set; }
		public List<Texture2D> ImagesSmall { get; private set; }
	}
}
