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
		private ConfigManager configManager;
		private FileManager fileManager;
		private TilesManager tilesManager;
		private LevelManager levelManager;
		private BoardManager boardManager;

		public MultiManager(ConfigManager configManager, FileManager fileManager, TilesManager tilesManager, LevelManager levelManager, BoardManager boardManager)
		{
			this.configManager = configManager;
			this.fileManager = fileManager;
			this.tilesManager = tilesManager;
			this.levelManager = levelManager;
			this.boardManager = boardManager;
		}

		public void LoadContent(SpriteBatch spriteBatch)
		{
			var world = configManager.NumWorld.ToString().PadLeft(2, '0');
			var path = "Content/Points/" + world + "/";
			var files = Directory.GetFiles(path);
			//var inpFileName = "level_0403_AA-dropsd01_BB-bridge02_CC-mixerd02_DD-mixerd02.csv"; 
			foreach (var file in files)
			{
				var inpFileName = file.Replace(path, String.Empty);
				Process(spriteBatch, path, inpFileName);
			}
		}

		private void Process(SpriteBatch spriteBatch, string path, string inpFileName)
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
			tilesManager.Initialize(path + inpFileName);

			// Awfult but too late in dev cycle
			levelManager.Tiles = tilesManager.Tiles;
			fileManager.Save(levelManager.Tiles, dirFileName + "/", dirFileText, theFilename);
			boardManager.SaveScreen(spriteBatch, dirFileName + "/" + tmpFileName);
		}

		// WIP
		//public void LoadContent(SpriteBatch spriteBatch)
		//{
		//	var world = configManager.NumWorld.ToString().PadLeft(2, '0');
		//	var round = configManager.NumRound.ToString().PadLeft(2, '0');
		//	var level = String.Format("level_{0}{1}", world, round);

		//	var check = configManager.CheckPoint.ToString().PadLeft(2, '0');
		//	var point = level + "_" + check;
		//	var path = String.Format("{0}{1}/{1}{2}/")
		//	var files = Directory.GetFiles(path);
		//	//var inpFileName = "level_0403_AA-dropsd01_BB-bridge02_CC-mixerd02_DD-mixerd02.csv"; 
		//	foreach (var file in files)
		//	{
		//		var inpFileName = file.Replace(path, String.Empty);
		//		Process(spriteBatch, path, inpFileName);
		//	}
		//}
	}
}
