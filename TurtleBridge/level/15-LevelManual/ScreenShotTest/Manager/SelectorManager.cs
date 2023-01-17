using Microsoft.Xna.Framework.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScreenShotTest
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
			Selector = GetSelector(AssetType.AwavesBlock);
			//Selector = GetSelector(AssetType.BbridgeMidd);
		}

		public void Update()
		{
			bool left = inputManager.LeftButton();

			if (inputManager.KeyDown(Keys.D1) || (left && (inputManager.MousePosition.X == 0 || inputManager.MousePosition.X == 1) && (inputManager.MousePosition.Y == 6 || inputManager.MousePosition.Y == 7)))
			{
				Selector = GetSelector(AssetType.BbridgeMidd);
			}
			if (inputManager.KeyDown(Keys.D2) || (left && inputManager.MousePosition.X == 2 && (inputManager.MousePosition.Y == 6 || inputManager.MousePosition.Y == 7)))
			{
				Selector = GetSelector(AssetType.HislandMidd);
			}
		}

		private int GetSelector(AssetType assetType)
		{
			return (int)assetType;
		}

		public int Selector { get; private set; }
	}
}
