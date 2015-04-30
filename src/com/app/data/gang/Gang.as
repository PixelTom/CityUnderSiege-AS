package com.app.data.gang 
{
	import com.app.data.character.Character;
	/**
	 * GANG
	 * @author Thomas Gattenhof
	 * 
	 * Base Gang class. Holds information about a gang.
	 * name: name of the gang
	 * description: blurb of the gang
	 * members: array of the characters in the gang
	 * leader: single character leader of the gang
	 */
	public class Gang 
	{
		protected var _name:String;
		protected var _description:String;
		protected var _members:Array;
		protected var _leader:Character;
		
		//===========================================================0
		public function Gang() 
		{
			
		}
		
	}

}