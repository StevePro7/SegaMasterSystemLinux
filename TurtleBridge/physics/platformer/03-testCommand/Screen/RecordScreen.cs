using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Xna.Framework;

namespace Test
{
	public class RecordScreen : IScreen
	{
		public void Initialize()
		{
		}

		public void LoadContent()
		{
		}

		public int Update(GameTime gameTime)
		{
			return (int)ScreenType.Record;
		}

		public void Draw()
		{
		}
	}
}
