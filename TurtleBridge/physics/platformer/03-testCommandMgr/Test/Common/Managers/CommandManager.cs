using System;

namespace WindowsGame.Common
{
	public interface ICommandManager
	{
		void Initialize();
	}

	public class CommandManager : ICommandManager
	{
		public void Initialize()
		{
			command_array = GetCommandlArray();
		}

		private Byte[] GetCommandlArray()
		{
			return new byte[Constants.MAX_COMMANDS]
			{
				1,
			};
		}

		private Byte[] command_array { get; set; }
	}
}
