using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FunctionMgr
{
	public class BankManager
	{
		private List<string> lines;

		public void Init()
		{
			lines = new List<string>();
		}

		public void ProcessBanks(int numBanks)
		{
			for (int idx = 0; idx < numBanks; idx++)
			{
				ProcessBank(idx + 2);
			}
		}

		public void ProcessBank(int idx)
		{
			lines.Clear();

		}
	}
}
