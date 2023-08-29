using System;
using System.Collections.Generic;

namespace FunctionMgr
{
	public class BankManager
	{
		private FileManager fm;
		private List<string> lines;

		public BankManager(FileManager fm)
		{
			this.fm = fm;
		}

		public void Init()
		{
			lines = new List<string>();
		}

		public void ProcessBanks(int numBanks)
		{
			for (int idx = 0; idx < numBanks; idx++)
			{
				var bank = idx + 2;
				ProcessBank(bank);
			}
		}

		public void ProcessBank(int bank)
		{
			fm.Banks(bank);
		}

		public void ProcessBank02(int bank)
		{
			lines.Clear();
			lines.Add("");
		}

		
	}
}
