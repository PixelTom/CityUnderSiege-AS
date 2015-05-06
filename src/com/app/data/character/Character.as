package com.app.data.character 
{
	import com.app.data.gang.Gang;
	import com.app.data.generators.NameGenerator;
	/**
	 * CHARACTER
	 * @author Thomas Gattenhof
	 * 
	 * Base Character class. Holds information about characters
	 * name: Character's name
	 * age: Character's age
	 * gang: Character's gang affiliation
	 * liege: Character's direct boss, can be null
	 * vassals: Character's direct underlings
	 * properties: Properties under the character's direct control
	 */
	public class Character 
	{
		static public const UNNAMED:String = "unnamed"
		
		static public const BARON:String = "baron";
		static public const COUNT:String = "count";
		static public const DUKE:String = "duke";
		static public const KING:String = "king";
		static public const EMPEROR:String = "emperor";
		static public const CIVILIAN:String = "civilian";
		
		protected var _name:String;
		protected var _title:String;
		protected var _gang:Gang;
		protected var _liege:Character;
		protected var _vassals:Array;
		protected var _properties:Array;
		
		//===========================================================0
		// Make a blank character with nothing but a name
		public function Character(name:String = UNNAMED) 
		{
			_name = name == UNNAMED ? NameGenerator.genCharacter() : name;
			_gang = null;
			_title = CIVILIAN;
			_liege = null;
			_vassals = null;
			_properties = null;
			
			trace(_name);
		}
		
		//===========================================================0
		//================ GETTERS AND SETTERS ======================0
		//===========================================================0
		
		public function get name():String 
		{
			return _name;
		}
		
		public function set gang(value:Gang):void 
		{
			_gang = value;
		}
		
	}

}