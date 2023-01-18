using Microsoft.Xna.Framework.Input;

namespace ScreenShotTest
{
	public class SelectorManager
	{
		private InputManager inputManager;
		private int wide, high;
		private int rows, cols;

		public SelectorManager(InputManager inputManager, int wide, int high)
		{
			this.inputManager = inputManager;
			this.wide = wide;
			this.high = high;
			cols = wide / 32;
			rows = high / 32;
		}

		public void Initialize()
		{
			Selector = GetSelector(AssetType.AwavesBlock);
		}

		public void Update()
		{
			bool left = inputManager.LeftButton();
			if (!left)
			{
				return;
			}

			int row = (int)(inputManager.MousePosition.Y);
			int col = (int)(inputManager.MousePosition.X);
			if (row < rows)
			{
				return;
			}
			if (col > 80)
			{
				return;
			}

			int idx = col >> 2;
			Logger.Info(col.ToString() + " " + idx.ToString());

			AssetType type = selectorIndex[idx];
			Selector = GetSelector(type);
		}

		private int GetSelector(AssetType assetType)
		{
			return (int)assetType;
		}

		private AssetType[] selectorIndex =
		{
			AssetType.AwavesBlock,
			AssetType.AwavesBlock,
			AssetType.QbridgeSideFlip,
			AssetType.BbridgeMidd,
			AssetType.CbridgeSide,
			AssetType.DbridgeSign,
			AssetType.EislandMidd,
			AssetType.FislandLeft,
			AssetType.GislandRght,
			AssetType.HislandSign,
			AssetType.IislandTreeL,
			AssetType.IislandTreeL,
			AssetType.KturtleSea1,
			AssetType.LturtleSea2,
			AssetType.MturtleFly1,
			AssetType.NturtleFly2,
			AssetType.OturtleFly3,
			AssetType.PturtleFly4,
			AssetType.RbridgeSignGoal,
			AssetType.SislandSignGoal,
		};

		public int Selector { get; private set; }
	}
}
