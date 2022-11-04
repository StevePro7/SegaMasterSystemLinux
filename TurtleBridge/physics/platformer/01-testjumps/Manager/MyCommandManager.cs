using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test
{
	public class MyCommandManager
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
