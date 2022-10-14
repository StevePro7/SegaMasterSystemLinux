using System;
using Microsoft.Xna.Framework.Audio;
using Microsoft.Xna.Framework.Graphics;
using WindowsGame.Common.Static;
using WindowsGame.Master;

namespace WindowsGame.Common.Managers
{
	public interface IContentManager
	{
		void Initialize();
		void LoadContent();
		//void LoadContentSplash();
	}

	public class ContentManager : BaseManager, IContentManager
	{
		private String contentRoot, texturesRoot, soundRoot;

		public void Initialize()
		{
			contentRoot = GetGlobalBaseContentRoot();
			texturesRoot = String.Format("{0}/{1}/", contentRoot, Constants.TEXTURES_DIRECTORY);
			soundRoot = String.Format("{0}/{1}/", contentRoot, Constants.SOUND_DIRECTORY);
		}

		//public void LoadContentSplash()
		//{
		//	// TODO revert this - only used for testing
		//	String splashName = MyGame.Manager.ConfigManager.GlobalConfigData.BlankSplash ? "StevePro" : "Splash";
		//	Assets.SplashTexture = LoadTexture(splashName);
		//	//Assets.SplashTexture = LoadTexture(SPLASH_NAME);
		//}

		public void LoadContent()
		{
			// Fonts.
			String fonts = String.Format("{0}/{1}/", contentRoot, Constants.FONTS_DIRECTORY);
			Assets.EmulogicFont = Engine.Content.Load<SpriteFont>(fonts + FONT_NAME);

			// Textures.
			String textures = String.Format("{0}/{1}/", contentRoot, Constants.TEXTURES_DIRECTORY);
			Assets.ArmTexture = Engine.Content.Load<Texture2D>(textures + "arm");
			Assets.BodyBackTexture = Engine.Content.Load<Texture2D>(textures + "body_back");
			Assets.BodyFrontTexture = Engine.Content.Load<Texture2D>(textures + "body_front");
			Assets.GroundTexture = Engine.Content.Load<Texture2D>(textures + "ground");
			Assets.LogTexture = Engine.Content.Load<Texture2D>(textures + "log");
			Assets.PumpkinTexture = Engine.Content.Load<Texture2D>(textures + "pumpkin");
			Assets.PumpkinSmashTexture = Engine.Content.Load<Texture2D>(textures + "pumpkinsmash");
			Assets.SkyTexture = Engine.Content.Load<Texture2D>(textures + "sky");

			//Byte screenScale = MyGame.Manager.ConfigManager.GlobalConfigData.ScreenScale;
			//Assets.SpritesheetTexture = LoadTexture(SPRITE_NAME);

			// Songs.
			//Assets.TitleMusicSong = Engine.Content.Load<Song>(soundRoot + TITLE_MUSIC_NAME);
			//Assets.GameOverSong = Engine.Content.Load<Song>(soundRoot + GAME_OVER_NAME);

			// Sound effects.
			//Assets.SoundEffectDictionary = new Dictionary<SoundEffectType, SoundEffectInstance>();
			//for (SoundEffectType key = SoundEffectType.Right; key <= SoundEffectType.Early; ++key)
			//{
			//	SoundEffectInstance value = LoadSoundEffectInstance(key.ToString());
			//	Assets.SoundEffectDictionary.Add(key, value);
			//}
		}

		private SoundEffectInstance LoadSoundEffectInstance(String assetName)
		{
			SoundEffect effect = ContentLoad<SoundEffect>(soundRoot + assetName);
			return effect.CreateInstance();
		}
		private Texture2D LoadTexture(String assetName)
		{
			return ContentLoad<Texture2D>(texturesRoot + assetName);
		}
		private static T ContentLoad<T>(String assetName)
		{
			return Engine.Content.Load<T>(assetName);
		}

		// Helper variables for hard coded names.
		private const String FONT_NAME = "Emulogic";
		private const String SPLASH_NAME = "StevePro";
		//private const String SPLASH_NAME = "Splash";		// TODO change
		private const String SPRITE_NAME = "Spritesheet";
		private const String TITLE_MUSIC_NAME = "TitleMusic";
		private const String GAME_OVER_NAME = "GameOver";
	}
}