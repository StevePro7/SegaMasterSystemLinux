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
				"tile",
				"rght_01",
				"yellow02",
				"red04",
				//"yellow01",
				//"yellow02",
				//"red01",
				//"red02",
			};
		}
		public IDictionary<string, Texture2D> Images { get; private set; }
	}
}
