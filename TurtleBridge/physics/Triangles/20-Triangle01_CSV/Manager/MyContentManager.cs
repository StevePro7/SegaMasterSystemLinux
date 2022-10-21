using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test
{
	public class MyContentManager
	{
		public void Initialize(ContentManager content)
		{
			content.RootDirectory = "Content";
		}

		public void LoadContent(ContentManager content)
		{
			Triangles = new Texture2D[2];
			Triangles[0] = content.Load<Texture2D>("triangle_max01");
			Triangles[1] = content.Load<Texture2D>("triangle_max02");
		}

		public void UnLoadContent(ContentManager content)
		{
			content.Unload();
		}

		public Texture2D[] Triangles{ get; private set; }
	}
}
