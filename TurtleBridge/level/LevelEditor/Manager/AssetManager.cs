using System;
using System.Collections.Generic;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.Graphics;

namespace LevelEditor.Manager
{
	public class AssetManager
	{
		public void Init()
		{
			Assets = new Dictionary<AssetType, Texture2D>();
		}

		public void Load(ContentManager content)
		{
			Assets.Clear();
			Assets[AssetType.LargeStripMidd] = content.Load<Texture2D>("Tiles/BlankGap");
			Assets.ExitTexture = content.Load<Texture2D>("Tiles/Exit");
			Assets.BlockTexture = content.Load<Texture2D>("Tiles/BlockA0");
			Assets.PlatformTexture = content.Load<Texture2D>("Tiles/Platform");
			Assets.GemTexture = content.Load<Texture2D>("Sprites/Gem");
			Assets.PlayerTexture = content.Load<Texture2D>("Sprites/Player/Idle");
			Assets.EnemyATexture = content.Load<Texture2D>("Sprites/MonsterA/Idle");
			Assets.EnemyBTexture = content.Load<Texture2D>("Sprites/MonsterB/Idle");
			Assets.EnemyCTexture = content.Load<Texture2D>("Sprites/MonsterC/Idle");
			Assets.EnemyDTexture = content.Load<Texture2D>("Sprites/MonsterD/Idle");
			Assets.HorzTexture = content.Load<Texture2D>("Tiles/StripHorz");
			Assets.VertTexture = content.Load<Texture2D>("Tiles/StripVert");
			Assets.ErrorTexture = content.Load<Texture2D>("Tiles/error");
		}

		public IDictionary<AssetType, Texture2D> Assets { get; private set; }
	}
}
