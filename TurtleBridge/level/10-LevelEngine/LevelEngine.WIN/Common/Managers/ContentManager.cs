﻿using System;
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
			// Splash.
			String splashName = MyGame.Manager.ConfigManager.GlobalConfigData.BlankSplash ? "StevePro" : "Splash";
			Assets.SplashTexture = LoadTexture(splashName);

			// Fonts.
			String fonts = String.Format("{0}/{1}/", contentRoot, Constants.FONTS_DIRECTORY);
			Assets.EmulogicFont = Engine.Content.Load<SpriteFont>(fonts + FONT_NAME);

			// Textures.
			Byte screenScale = MyGame.Manager.ConfigManager.GlobalConfigData.ScreenScale;
			String textures = String.Format("{0}/{1}/{2}/", contentRoot, Constants.TEXTURES_DIRECTORY, screenScale);
			Assets.StripHorzTexture = Engine.Content.Load<Texture2D>(textures + "StripHorz");
			Assets.StripVertTexture = Engine.Content.Load<Texture2D>(textures + "StripVert");

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