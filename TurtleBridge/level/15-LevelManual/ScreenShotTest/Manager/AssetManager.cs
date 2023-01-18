using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace ScreenShotTest
{
	public class AssetManager
	{
		public void LoadContent(ContentManager myContentManager)
		{
			ImagesLarge = new List<Texture2D>();
			ImagesSmall = new List<Texture2D>();

			var files = GetFiles();
			string file;
			string temp;
			Texture2D image;
			for (int index = 0; index < files.Length; index++)
			{
				file = files[index];
				temp = "Large/" + file;
				image = myContentManager.Load<Texture2D>(temp);
				ImagesLarge.Add(image);
				temp = "Small/" + file;
				image = myContentManager.Load<Texture2D>(temp);
				ImagesSmall.Add(image);
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
				"EislandMidd",
				"FislandLeft",
				"GislandRght",
				"HislandSign",
				"IislandTree",
				"JislandTreeRght",
				"KturtleSea1",
				"LturtleSea2",
				"MturtleFly1",
				"NturtleFly2",
				"OturtleFly3",
				"PturtleFly4",
				"QbridgeSideFlip",
				"RbridgeSignGoal",
				"SislandSignGoal",
			};
		}

		public List<Texture2D> ImagesLarge { get; private set; }
		public List<Texture2D> ImagesSmall { get; private set; }
	}
}
