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
			fileManager.Initialize();
			imageManager.Initialize(paletteManager, tileManager, tilemapManager);
			paletteManager.Initialize();
			tileManager.Initialize(fileManager, paletteManager);
			tilemapManager.Initialize(fileManager);
		}

		public void LoadContent(ContentManager content, GraphicsDevice graphicsDevice)
		{
			resourceManager.LoadContent(content, files);
			tileManager.LoadContent(graphicsDevice);
		}

		public void Draw(GraphicsDevice graphicsDevice, SpriteBatch spriteBatch)
		{
			//string file = files[0];
			foreach (var file in files)
			{
				Texture2D image = resourceManager.Resources[file];
				imageManager.Process(spriteBatch, image, file);
			}

			tileManager.Save(graphicsDevice, spriteBatch);
		}
	}
}
