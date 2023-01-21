using System;

namespace Test
{
	public static class Constants
	{
		public const String BUILD_VERSION = "V1.0.0";
		public const String CONTENT_DIRECTORY = "Content";

		public const Boolean IsFullScreen = false;
		public const Boolean IsMouseVisible = true;
		public const UInt16 ScreenWide = 256;
		public const UInt16 ScreenHigh = 192;

		//public const Byte MAX_ROWS = 12;
		public const Byte MAX_COLS = Constants.ScreenWide / 8;
		public const Byte TILE_WIDE = 32;
		public const Byte TILE_HIGH = 112;

		public const Byte MAX_OBJS = Constants.ScreenWide / Constants.TILE_WIDE;

		public const Byte MAX_COMMANDS = 1;

		public const Byte COLUMN_START = 64;
		//public const Boolean UseExposed = true;
		//public const UInt16 ExposeWide = 256;
		//public const UInt16 ExposeHigh = 192;
	}
}