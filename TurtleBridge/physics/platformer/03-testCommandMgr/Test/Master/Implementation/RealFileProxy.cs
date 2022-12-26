using System;
using System.IO;
using Microsoft.Xna.Framework;

namespace WindowsGame.Master
{
	public class RealFileProxy : IFileProxy
	{
		public Stream GetStream(String path)
		{
			return TitleContainer.OpenStream(path);
		}
	}
}