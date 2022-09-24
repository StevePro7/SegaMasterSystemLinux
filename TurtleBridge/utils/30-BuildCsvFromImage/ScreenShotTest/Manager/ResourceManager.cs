using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

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
