using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Xna.Framework;

namespace Test.Screen
{
	public class PlaybackScreen : IScreen
	{
		public void Initialize()
		{
		}

		public void LoadContent()
		{
		}

		public int Update(GameTime gameTime)
		{
			return (int)ScreenType.Playback;
		}

		public void Draw()
		{
		}
	}
}
