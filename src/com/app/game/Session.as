package com.app.game 
{
	import com.app.data.gang.GangGenerator;
	//===========================================================0
	/**
	 * Session object, holding data for this session
	 * @author ...
	 */
	public class Session 
	{
		private var _gangs:Array;
		private var _properties:Array;
		
		//===========================================================0
		public function Session() 
		{
			
		}
		
		//===========================================================0
		public function newGame():void
		{
			trace("NEW GAME");
			_gangs = new Array();
			_properties = new Array();
			
			for (var i:int = 0; i < 2; i++)
			{
				_gangs.push(GangGenerator.generate());
			}
		}
		
		//===========================================================0
		//--- Load an existing session
		//===========================================================0
		public function loadSession():void
		{
			
		}
		
	}

}