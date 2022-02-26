using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LevelEditor
{
	public class SelectorManager
	{
		private InputManager inputManager;

		public SelectorManager(InputManager inputManager)
		{
			this.inputManager = inputManager;
		}

		public void Initialize()
		{
			Selector = Constants.TileArrow;
		}

		public void Update()
		{

			if (inputManager.KeyDown(Keys.D1))
			{
				Selector = Constants.TileEmpty;
			}
			if (inputManager.KeyDown(Keys.D2))
			{
				Selector = Constants.TileLarge;
			}
			if (inputManager.KeyDown(Keys.D3))
			{
				Selector = Constants.TileSmall;
			}
			if (inputManager.KeyDown(Keys.D4))
			{
				Selector = Constants.TileEarth;
			}
			if (inputManager.KeyDown(Keys.D5))
			{
				Selector = Constants.TileDiver;
			}
			if (inputManager.KeyDown(Keys.D6))
			{
				Selector = Constants.TileHover;
			}
			if (inputManager.KeyDown(Keys.D7))
			{
				Selector = Constants.TileFlyer;
			}
			if (inputManager.KeyDown(Keys.D8))
			{
				Selector = Constants.TileArrow;
			}
			if (inputManager.KeyDown(Keys.D9))
			{
				Selector = Constants.TileGoals;
			}
		}

		public string Selector { get; private set; }
	}
}
