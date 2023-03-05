using System;

namespace FunctionMgr
{
	class Program
	{
		static void Main()
		{
			var fm = new FunctionManager();
			byte divide = 10;
			byte x = 2;
			byte y = 8;
			byte z = 0;
			fm.CovertXYtoZ(divide, x, y, ref z);
			z = 75;
			fm.ConvertZtoXY(divide, z, ref x, ref y);

			//12 * 16 = 192 + 12 = 204
			// 2 + 8
			byte b = 255;
			byte upper = 0;
			byte lower = 0;
			fm.ConvertByteToNibbles(b, ref upper, ref lower);

			upper = 15;
			lower = 13;
			fm.ConvertNibblesToByte(upper, lower, ref b);
			Console.WriteLine("Press [ RETURN ]");
			Console.Read();
		}

	}
}
