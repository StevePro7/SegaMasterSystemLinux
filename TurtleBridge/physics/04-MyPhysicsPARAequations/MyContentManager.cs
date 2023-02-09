using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace Test
{
	public class MyContentManager
	{
		public void LoadContent(ContentManager content)
		{
			Images = new Texture2D[4];
			Images[0] = content.Load<Texture2D>("1");
			Images[1] = content.Load<Texture2D>("2");
			Images[2] = content.Load<Texture2D>("4");
			Images[3] = content.Load<Texture2D>("8");
		}

		public Texture2D[] Images { get; private set; }
	}
}
