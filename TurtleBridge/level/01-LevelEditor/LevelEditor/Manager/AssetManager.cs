using System.Collections.Generic;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace LevelEditor
{
	public class AssetManager
	{
		public void Initialize()
		{
			Assets = new Dictionary<AssetType, Texture2D>();
		}

		public void LoadContent(ContentManager content)
		{
			Assets.Clear();
			Assets[AssetType.LargeStripMidd] = content.Load<Texture2D>("01-AA");
			Assets[AssetType.LargeStripLeft] = content.Load<Texture2D>("01-BB");
			Assets[AssetType.LargeStripRght] = content.Load<Texture2D>("01-CC");
			Assets[AssetType.SmalleStripMid] = content.Load<Texture2D>("02-AA");
			Assets[AssetType.SmallStripLeft] = content.Load<Texture2D>("02-BB");
			Assets[AssetType.SmallStripRght] = content.Load<Texture2D>("02-CC");
			Assets[AssetType.GroundTextMidd] = content.Load<Texture2D>("03-AA");
			Assets[AssetType.GroundTextLeft] = content.Load<Texture2D>("03-BB");
			Assets[AssetType.GroundTextRght] = content.Load<Texture2D>("03-CC");
			Assets[AssetType.BigPalmTreeAxe] = content.Load<Texture2D>("04-DD");
			Assets[AssetType.TheTurtleDiver] = content.Load<Texture2D>("diver_turtle");
			Assets[AssetType.TheTurtleHover] = content.Load<Texture2D>("hover_turtle");
			Assets[AssetType.TheTurtleFlyer] = content.Load<Texture2D>("flyer_turtle");
			Assets[AssetType.StevenSignGoal] = content.Load<Texture2D>("goal_sign");
			Assets[AssetType.StevenSignSend] = content.Load<Texture2D>("sign_send");
			Assets[AssetType.SeaWavesHeight] = content.Load<Texture2D>("05-sea");
			Assets[AssetType.LineHorizontal] = content.Load<Texture2D>("StripHorz");
			Assets[AssetType.LineVertically] = content.Load<Texture2D>("StripVert");
			Assets[AssetType.ErrorRoundBlob] = content.Load<Texture2D>("error");
			Assets[AssetType.TreeLegendDraw] = content.Load<Texture2D>("trees");
			Assets[AssetType.TheSmallLegend] = content.Load<Texture2D>("small");
			Assets[AssetType.TheLargeLegend] = content.Load<Texture2D>("large");
			Font = content.Load<SpriteFont>("Emulogic");

		}

		public IDictionary<AssetType, Texture2D> Assets { get; private set; }
		public SpriteFont Font { get; private set; }
	}
}
