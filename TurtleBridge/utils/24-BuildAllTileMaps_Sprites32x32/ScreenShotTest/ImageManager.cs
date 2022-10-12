using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace ScreenShotTest
{
	public class ImageManager
	{
		public void LoadContent(Microsoft.Xna.Framework.Content.ContentManager myContentManager)
		{
			Images = new Dictionary<string, Texture2D>();
			var files = GetFiles();
			foreach (var file in files)
			{
				Images[file] = myContentManager.Load<Texture2D>(file);
			}
		}

		private string[] GetFiles()
		{
			return new string[]
			{
				"sprites_org_08",
				"sprites_org_28"
				//"000",
				//"045",
				//"090",
				//"135",
				//"180",
				//"225",
				//"270",
				//"315",
			};
		}

		public IDictionary<string, Texture2D> Images { get; private set; }
	}
}
