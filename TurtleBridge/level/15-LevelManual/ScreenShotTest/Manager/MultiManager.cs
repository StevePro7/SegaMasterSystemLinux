using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScreenShotTest
{
	public class MultiManager
	{
		private TilesManager tilesManager;
		private FileManager fileManager;
		private BoardManager boardManager;

		public MultiManager(TilesManager tilesManager, FileManager fileManager, BoardManager boardManager)
		{
			this.tilesManager = tilesManager;
			this.fileManager = fileManager;
			this.boardManager = boardManager;
		}

		public void LoadContent(SpriteBatch spriteBatch)
		{
			var inpFileName = "AA-bridge01_BB-bridge01_CC-bridge01_DD-bridge01.csv";
			var tmpFileName = "AA-bridge01_BB-bridge01_CC-bridge01_DD-bridge01";
			tilesManager.Initialize("Content/Points/" + inpFileName);
			boardManager.SaveScreen(spriteBatch, tmpFileName);
		}
	}
}
