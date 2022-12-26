using System;
using System.IO;

namespace WindowsGame.Master
{
	public interface IFileProxy
	{
		Stream GetStream(String path);
	}
}
