using Microsoft.Xna.Framework;
using System;
using WindowsGame.Master;

namespace WindowsGame.Common
{
	public interface IResolutionManager
	{
		void Initialize();
		void LoadContent();
	}

	public class ResolutionManager : IResolutionManager
	{
		private GraphicsDeviceManager device;
		private Int32 width, height;
		private Boolean fullScreen;

		public void Initialize()
		{
			device = Engine.GraphicsDeviceManager;
			width = device.PreferredBackBufferWidth;
			height = device.PreferredBackBufferHeight;
		}

		public void LoadContent()
		{
			fullScreen = Constants.IsFullScreen;
			width = Constants.ScreenWide;
			height = Constants.ScreenHigh;

			device.PreferredBackBufferWidth = width;
			device.PreferredBackBufferHeight = height;
			device.IsFullScreen = fullScreen;
			device.ApplyChanges();
		}

	}
}