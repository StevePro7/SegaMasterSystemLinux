using System;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Input;

namespace Test
{
	public class MyScreenManager
	{
		MyContentManager myContentManager;
		MyInputManager myInputManager;

		public MyScreenManager(
			MyContentManager myContentManager,
			MyInputManager myInputManager
			)
		{
			this.myContentManager = myContentManager;
			this.myInputManager = myInputManager;
		}

	}
}