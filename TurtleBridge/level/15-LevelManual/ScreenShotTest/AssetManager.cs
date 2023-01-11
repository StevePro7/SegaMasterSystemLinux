using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace ScreenShotTest
{
	public class AssetManager
	{
		public void LoadContent(ContentManager myContentManager)
		{
			Images = new Dictionary<string, Texture2D>();
			var files = GetFiles();
			foreach (var file in files)
			{
				var name = file.Substring(0, 1);
				Images[name] = myContentManager.Load<Texture2D>(file);
			}
		}

		private string[] GetFiles()
		{
			return new string[]
			{
				"AwavesBlock",
				"BleftBridge",
				"CmiddBridge",
				"DrghtBridge",
				"EsignBridge",
				"FgoalBridge",
				"GleftIsland",
				"HmiddIsland",
				"IrghtIsland",
				"JtreeIslLft",
				"KtreeIslRgt",
				"LturtleSea1",
				"MturtleSea2",
				"NturtleFly1",
				"OturtleFly2",
				"PturtleFly3",
				"QturtleFly4",
			};
		}

		public IDictionary<string, Texture2D> Images { get; private set; }
	}
}
