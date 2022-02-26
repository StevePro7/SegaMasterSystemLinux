using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LevelEditor
{
	public class SelectorManager
	{
		private InputManager inputManager;

		public SelectorManager(InputManager inputManager)
		{
			this.inputManager = inputManager;
		}

		public void Initialize()
		{
			Selector = Constants.TileArrow;
		}

		public void Update()
		{

		}

		public string Selector { get; private set; }
	}
}
