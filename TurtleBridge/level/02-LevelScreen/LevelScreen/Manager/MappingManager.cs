//using System;
//using System.Collections.Generic;
//using System.Text;

//namespace LevelScreen
//{
//	public class MappingManager
//	{
//		public void Initialize()
//		{
//			AssetLookup = new Dictionary<string, AssetType>();
//		}

//		public void LoadContent()
//		{
//			AssetLookup.Clear();
//			AssetLookup[Constants.TileLarge] = AssetType.LargeStripMidd;
//			AssetLookup[Constants.TileSmall] = AssetType.SmalleStripMid;
//			AssetLookup[Constants.TileEarth] = AssetType.GroundTextMidd;
//			AssetLookup[Constants.TileTrees] = AssetType.BigPalmTreeAxe;
//			AssetLookup[Constants.TileDiver] = AssetType.TheTurtleDiver;
//			AssetLookup[Constants.TileHover] = AssetType.TheTurtleHover;
//			AssetLookup[Constants.TileFlyer] = AssetType.TheTurtleFlyer;
//			AssetLookup[Constants.TileGoals] = AssetType.StevenSignGoal;
//			AssetLookup[Constants.TileArrow] = AssetType.StevenSignSend;
//			AssetLookup[Constants.TileWaves] = AssetType.SeaWavesHeight;
//		}

//		public AssetType GetAssetType(string tile)
//		{
//			if (AssetLookup.ContainsKey(tile))
//			{
//				return AssetLookup[tile];
//			}

//			return AssetType.EmptyAssetDraw;
//		}

//		public AssetType GetLegendType(string tile)
//		{
//			if (tile == Constants.TileLarge)
//			{
//				return AssetType.TheLargeLegend;
//			}
//			else if (tile == Constants.TileSmall)
//			{
//				return AssetType.TheSmallLegend;
//			}
//			else if (tile == Constants.TileTrees)
//			{
//				return AssetType.TreeLegendDraw;
//			}
//			else if (AssetLookup.ContainsKey(tile))
//			{
//				return AssetLookup[tile];
//			}

//			return AssetType.EmptyAssetDraw;
//		}

//		public IDictionary<string, AssetType> AssetLookup { get; private set; }

//	}
//}
