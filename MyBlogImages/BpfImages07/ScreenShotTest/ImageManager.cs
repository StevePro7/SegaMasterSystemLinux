using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace ScreenShotTest
{
	public class ImageManager
	{
		private const int MAX = 8;

		private string[] names = new string[MAX]
		{
			"01-uv_init",
			"02-uv_venv",
			"03-which_python",
			"04-uv_add",
			"04-uv_add_bak",
			"05-uv_tree",
			"06-uv_tool",
			"07-uvx",
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
