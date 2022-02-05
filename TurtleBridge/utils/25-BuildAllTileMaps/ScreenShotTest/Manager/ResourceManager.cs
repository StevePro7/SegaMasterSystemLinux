using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class ResourceManager
	{
		public void LoadContent(ContentManager content, string[] files)
		{
			Resources = new Dictionary<string, Texture2D>();
			foreach(var file in files)
			{
				Resources[file] = content.Load<Texture2D>(file);
			}
		}

		public IDictionary<string, Texture2D> Resources { get; private set; }
	}
}
