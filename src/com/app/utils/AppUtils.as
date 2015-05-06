package com.app.utils 
{
	//===========================================================0
	/**
	 * Application Utils, for manipulation of data
	 * @author ...
	 */
	public class AppUtils 
	{
		
		//===========================================================0
		//---- Random Number
		//===========================================================0
		static public function rn(start:int = 0, end:int = 1):int
		{
			var outInt:int;
			
			outInt = Math.round(Math.random() * (end - start)) + start;
			
			return outInt;
		}
		
		//===========================================================0
		//---- Shuffle Array
		//===========================================================0
		static public function shuffleArray(inArray:Array):Array
		{
			var outArray:Array = new Array();
			
			inArray = copyArray(inArray);
			
			while (inArray.length > 0) {
				var id:int = rn(0, inArray.length - 1);
				outArray.push(inArray[id]);
				inArray.splice(id, 1);
			}
			
			return outArray;
		}
		
		//===========================================================0
		//---- Make a copy of an array
		//===========================================================0
		static public function copyArray(inArray:Array):Array
		{
			var outArray:Array = new Array();
			
			for (var i:int = 0; i < inArray.length; i++)
			{
				outArray.push(inArray[i]);
			}
			
			return outArray;
		}
		
		
	}

}