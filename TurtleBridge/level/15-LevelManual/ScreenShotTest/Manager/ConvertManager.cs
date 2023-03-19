using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScreenShotTest.Manager
{
	public class ConvertManager
	{
		public string Convert(AssetType assetType)
		{
			string result = String.Empty;
			if (assetType == AssetType.AwavesBlock)
			{
				return "WavesBlock";
			}

			if (assetType == AssetType.BbridgeMidd)
			{
				return "BridgeMidd";
			}
			if (assetType == AssetType.CbridgeSide)
			{
				return "BridgeRght";
			}
			if (assetType == AssetType.DbridgeSign)
			{
				return "BridgeSign";
			}

			if (assetType == AssetType.EislandMidd)
			{
				return "IslandMidd";
			}
			if (assetType == AssetType.FislandLeft)
			{
				return "IslandLeft";
			}
			if (assetType == AssetType.GislandRght)
			{
				return "IslandRght";
			}
			if (assetType == AssetType.HislandSign)
			{
				return "IslandSign";
			}
			if (assetType == AssetType.IislandTreeL || assetType == AssetType.JislandTreeR)
			{
				return "IslandTree";
			}


			if (assetType == AssetType.KturtleSea1)
			{
				return "TurtleSea1";
			}
			if (assetType == AssetType.LturtleSea2)
			{
				return "TurtleSea2";
			}
			if (assetType == AssetType.MturtleFly1)
			{
				return "TurtleFly1";
			}
			if (assetType == AssetType.NturtleFly2)
			{
				return "TurtleFly2";
			}
			if (assetType == AssetType.OturtleFly3)
			{
				return "TurtleFly3";
			}
			if (assetType == AssetType.PturtleFly4)
			{
				return "TurtleFly4";
			}

			if (assetType == AssetType.QbridgeSideFlip)
			{
				return "BridgeLeft";
			}
			return result;
		}
	}
}
