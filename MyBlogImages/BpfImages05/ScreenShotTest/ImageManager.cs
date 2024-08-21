using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace ScreenShotTest
{
	public class ImageManager
	{
		private const int MAX = 2;

		private string[] names = new string[MAX] 
		{
			"PyCharmGym",
			"PyCharmGymnasium",
		};

		public void Load(ContentManager content)
		{
			Images = new Dictionary<string, Texture2D>();
			for (int idx = 0; idx < MAX; idx++)
			{
				string name = names[idx];
				Images[name] = content.Load<Texture2D>(names[idx]);
			}
		}

		public void Draw(string name)
		{
		}

		public IDictionary<string, Texture2D> Images { get; private set; }
	}
}
