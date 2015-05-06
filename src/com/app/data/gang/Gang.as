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
	 * colour: tint of the property the gang owns on the map
	 */
	public class Gang 
	{
		protected var _name:String;
		protected var _description:String;
		protected var _members:Array;
		protected var _leader:Character;
		protected var _colour:uint;
		
		//===========================================================0
		public function Gang(name:String) 
		{
			_name = name;
		}
		
		//===========================================================0
		public function set description(value:String):void 
		{
			_description = value;
		}
		
		//===========================================================0
		public function set members(value:Array):void 
		{
			_members = value;
		}
		
		//===========================================================0
		public function get name():String 
		{
			return _name;
		}
		
	}

}