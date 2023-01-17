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
			Selector = GetSelector(AssetType.JislandSign);
			//Selector = GetSelector(AssetType.BbridgeMidd);
		}

		private int GetSelector(AssetType assetType)
		{
			return (int)assetType;
		}

		public int Selector { get; private set; }
	}
}
