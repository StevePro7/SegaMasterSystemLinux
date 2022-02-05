using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace ScreenShotTest
{
	public class MyController
	{
		ResourceManager resourceManager;

		public MyController(ResourceManager resourceManager)
		{
			this.resourceManager = resourceManager;
		}

		public void LoadContent(ContentManager content, string[] files)
		{
			resourceManager.LoadContent(content, files);
		}
	}
}
