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
		FileManager fileManager;
		PaletteManager paletteManager;
		ImageManager imageManager;
		//TileManager tileManager;
		ResourceManager resourceManager;

		public MyController(
			FileManager fileManager,
			ImageManager imageManager,
			PaletteManager paletteManager, 
			ResourceManager resourceManager
			)
		{
			this.fileManager = fileManager;
			this.imageManager = imageManager;
			this.paletteManager = paletteManager;
			this.resourceManager = resourceManager;
		}

		public void Initialize(string[] files)
		{
			fileManager.Initialize(files);
			paletteManager.Initialize();
		}

		public void LoadContent(ContentManager content, string[] files)
		{
			resourceManager.LoadContent(content, files);
		}
	}
}
