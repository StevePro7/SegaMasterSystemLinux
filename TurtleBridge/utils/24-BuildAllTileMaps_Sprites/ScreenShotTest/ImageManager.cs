using Microsoft.Xna.Framework.Graphics;
using System.Collections.Generic;

namespace ScreenShotTest
{
	public class ImageManager
	{
		public void LoadContent(Microsoft.Xna.Framework.Content.ContentManager myContentManager)
		{
			Images = new Dictionary<string, Texture2D>();
			var files = GetFiles();
			foreach (var file in files)
			{
				Images[file] = myContentManager.Load<Texture2D>(file);
			}
		}

		private string[] GetFiles()
		{
			return new string[]
			{
				"rght_01",
				"rght_02",
				"rght_03",
				"flip_R1",
				"flip_R2",
				"flip_R3",
				"left_01",
				"left_02",
				"left_03",
				"flip_L1",
				"flip_L2",
				"flip_L3",
				"back_00",
				"face_01",
				"face_02",
				"face_03",
				"splash",
				"octopus01",
				"octopus02",
				"octopus03",
				"flyingfish01",
				"flyingfish02",
				"flyingfish03",
			};
		}
		public IDictionary<string, Texture2D> Images { get; private set; }
	}
}
