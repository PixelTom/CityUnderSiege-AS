package com.app.data.gang 
{
	/**
	 * ...
	 * @author ...
	 */
	public class GangData 
	{
		public static const GANG1:String = "Estonian Mob";
		public static const GANG2:String = "Lucky Dragon Triad";
		public static const GANG3:String = "Fightin' Irish Mafia";
		public static const GANG4:String = "Bluds";
		
		//===========================================================0
		static public function getGangs():Array
		{
			var returnArray:Array = [GANG1, GANG2, GANG3, GANG4];
			return returnArray;
		}
		
	}

}