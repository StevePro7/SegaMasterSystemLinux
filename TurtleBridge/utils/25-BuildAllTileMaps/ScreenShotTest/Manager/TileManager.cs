using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;


namespace ScreenShotTest
{
	public class TileManager
	{
		public void Initialize()
		{
			TileBank = new List<Tile>();
			TileDictionary = new Dictionary<string, string>();
		}

		public void Process(SpriteBatch spriteBatch, Texture2D image)
		{
		}

		public void Save()
		{

		}

		public List<Tile> TileBank{ get; private set; }
		public Dictionary<string, string> TileDictionary{ get; private set; }
	}
}
