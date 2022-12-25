using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace ScreenShotTest
{
	public abstract class Output
	{
		protected AssetManager assetManager;
		protected IList<AssetType> assets;
		protected IList<string> lines;

		public virtual void Ctor(AssetManager assetManager)
		{
			this.assetManager = assetManager;
			assets = new List<AssetType>();
			lines = new List<string>();
			assets.Clear();
		}

		public virtual void Save(string name)
		{
			lines.Clear();
			foreach (var asset in assets)
			{
				var image = assetManager.Images[(int)asset];
				int wide = image.Width;
				int high = image.Height;
				int wdiv8 = wide / 8;
				int hdiv8 = high / 8;
				int total = wdiv8 * hdiv8;
				int dble = total * 2;
				var line = $"{asset},{wide},{high},{wdiv8},{hdiv8},{total},{dble}";
				lines.Add(line);
			}

			File.WriteAllLines(name + ".csv", lines.ToArray());
		}

		public int High { get; protected set; }
		public int Wide { get; protected set; }
	}
}
