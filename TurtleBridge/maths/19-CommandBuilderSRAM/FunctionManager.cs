using System;
using System.Collections.Generic;

namespace FunctionMgr
{
	public class FunctionManager
	{
		private const byte BYTE_NIBBLE_MASK = 0x0F;

		public void CovertXYtoZ(byte divide, byte x, byte y, ref byte z)
		{
			z = (byte)(y * divide + x);
		}
		public void ConvertZtoXY(byte divide, byte z, ref byte x, ref byte y)
		{
			x = (byte)(z % divide);
			y = (byte)(z / divide);
		}

		public void ConvertByteToNibbles(byte b, ref byte upper, ref byte lower)
		{
			upper = (byte)((b >> 4) & BYTE_NIBBLE_MASK);
			lower = (byte)(b & BYTE_NIBBLE_MASK);
		}
		public void ConvertNibblesToByte(byte upper, byte lower, ref byte b)
		{
			b = (byte)(lower | (upper << 4));
		}
	}
}
