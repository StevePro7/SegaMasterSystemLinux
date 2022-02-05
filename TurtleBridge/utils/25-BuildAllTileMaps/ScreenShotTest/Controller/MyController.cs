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
		ResourceManager resourceManager;
		TileManager tileManager;
		TilemapManager tilemapManager;
		string[] files;

		public MyController(
			FileManager fileManager,
			ImageManager imageManager,
			PaletteManager paletteManager, 
			ResourceManager resourceManager,
			TileManager tileManager,
			TilemapManager tilemapManager,
			string[] files
			)
		{
			this.fileManager = fileManager;
			this.imageManager = imageManager;
			this.paletteManager = paletteManager;
			this.resourceManager = resourceManager;
			this.tileManager = tileManager;
			this.tilemapManager = tilemapManager;
			this.files = files;
		}

		public void Initialize(GraphicsDevice graphicsDevice)
		{
			fileManager.Initialize(files);
			imageManager.Initialize(paletteManager, tileManager, tilemapManager);
			paletteManager.Initialize();
			tileManager.Initialize(paletteManager);
		}

		public void LoadContent(ContentManager content)
		{
			resourceManager.LoadContent(content, files);
		}

		public void Draw(SpriteBatch spriteBatch)
		{
			string file = files[0];
			Texture2D image = resourceManager.Resources[file];
			imageManager.Process(spriteBatch, image);

			//resourceManager.LoadContent(content, files);
		}
	}
}
