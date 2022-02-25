using System;
using System.Text;
using System.Threading.Tasks;

namespace LevelEditor
{
	public class MappingManager
	{
		public AssetType GetAssetType(string tile)
		{
			if (tile == Constants.TileWaves)
			{
				return AssetType.SeaWavesHeight;
			}
			return AssetType.EmptyAssetDraw;
		}
	}
}
