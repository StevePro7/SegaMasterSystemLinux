using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScreenShotTest
{
	public class MultiManager
	{
		private FileManager fileManager;
		private TilesManager tilesManager;
		private LevelManager levelManager;
		private BoardManager boardManager;

		public MultiManager(FileManager fileManager, TilesManager tilesManager, LevelManager levelManager, BoardManager boardManager)
		{
			this.fileManager = fileManager;
			this.tilesManager = tilesManager;
			this.levelManager = levelManager;
			this.boardManager = boardManager;
		}

		public void LoadContent(SpriteBatch spriteBatch)
		{
			var files = Directory.GetFiles("Content/Points/");
			//var inpFileName = "level_0403_AA-dropsd01_BB-bridge02_CC-mixerd02_DD-mixerd02.csv"; 
			foreach (var file in files)
			{
				var inpFileName = file.Replace("Content/Points/", String.Empty);
				Process(spriteBatch, inpFileName);
			}
		}

		private void Process(SpriteBatch spriteBatch, string inpFileName)
		{
			var dirFileText = inpFileName.Replace(".csv", String.Empty);
			var dirFileName = "output/" + dirFileText;
			if (!Directory.Exists(dirFileName))
			{
				Directory.CreateDirectory(dirFileName);
			}
			else
			{
				var files = Directory.GetFiles(dirFileName);
				foreach (var file in files)
				{
					File.Delete(file);
				}
			}
			//fileManager.Save(tilesManager.Tiles, )
			var tmpFileName = dirFileText + ".png";
			var theFilename = dirFileText.Substring(0, 10) + "_txt";
			tilesManager.Initialize("Content/Points/" + inpFileName);

			// Awfult but too late in dev cycle
			levelManager.Tiles = tilesManager.Tiles;
			fileManager.Save(levelManager.Tiles, dirFileName + "/", dirFileText, theFilename);
			boardManager.SaveScreen(spriteBatch, dirFileName + "/" + tmpFileName);
		}
	}
}
