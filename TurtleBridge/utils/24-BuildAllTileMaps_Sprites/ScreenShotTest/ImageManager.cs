using System;
using System.Collections.Generic;
using System.IO;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
namespace ScreenShotTest
{
	public class ImageManager
	{
		public void LoadContent(Microsoft.Xna.Framework.Content.ContentManager myContentManager)
		{
			Images = new Dictionary<string, Texture2D>();
			//var files = GetFiles();
			var file = "back_00";
			Images[file] = myContentManager.Load<Texture2D>(file);
		}

		public IDictionary<string, Texture2D> Images { get; private set; }
	}
}
