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
		string[] files;

		public MyController(
			FileManager fileManager,
			ImageManager imageManager,
			PaletteManager paletteManager, 
			ResourceManager resourceManager,
			string[] files
			)
		{
			this.fileManager = fileManager;
			this.imageManager = imageManager;
			this.paletteManager = paletteManager;
			this.resourceManager = resourceManager;
			this.files = files;
		}

		public void Initialize(GraphicsDevice graphicsDevice)
		{
			fileManager.Initialize(files);
			imageManager.Initialize(graphicsDevice, paletteManager);
			paletteManager.Initialize();
		}

		public void LoadContent(ContentManager content)
		{
			resourceManager.LoadContent(content, files);
		}
	}
}
