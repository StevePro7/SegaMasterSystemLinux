using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace LevelEditor
{
	public class MappingManager
	{
		public void Initialize()
		{
			AssetLookup = new Dictionary<string, AssetType>();
		}

		public void LoadContent()
		{
			AssetLookup.Clear();
		}

		public AssetType GetAssetType(string tile)
		{
			if (tile == Constants.TileWaves)
			{
				return AssetType.SeaWavesHeight;
			}
			if (tile == Constants.TileDiver)
			{
				return AssetType.TheTurtleDiver;
			}
			if (tile == Constants.TileHover)
			{
				return AssetType.TheTurtleHover;
			}
			return AssetType.EmptyAssetDraw;
		}

		public IDictionary<string, AssetType> AssetLookup { get; private set; }

	}
}
