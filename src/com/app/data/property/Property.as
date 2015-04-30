package com.app.data.property 
{
	import com.app.data.character.Character;
	import com.app.data.NameGenerator;
	/**
	 * PROPERTY
	 * @author Thomas Gattenhof
	 * 
	 * Base Property class. Holds information about all properties
	 * population: Max and Current values of the properties' population
	 * garrison: Max and Current values of the properties' military population
	 * income: Max and Current values of the properties' income
	 * type: The type of property it is
	 * owner: The character who holds this property under control
	 * parent: The larger property this property is a part of
	 * children: Smaller properties under this one
	 */
	public class Property 
	{
		static public const UNNAMED:String = "unnamed";
		
		static public const BUILDING:String = "building";
		static public const BLOCK:String = "block";
		static public const DISTRICT:String = "district";
		static public const SUBURB:String = "suburb";
		
		protected var _name:String;
		protected var _populationCurrent:int;
		protected var _populationMax:int;
		protected var _garrisonCurrent:int;
		protected var _garrisonMax:int;
		protected var _incomeCurrent:Number;
		protected var _incomeMax:Number;
		protected var _type:String;
		protected var _owner:Character;
		protected var _parent:Property;
		protected var _children:Array;
		
		//===========================================================0
		public function Property(name:String = UNNAMED, type:String = BUILDING) 
		{
			_name = name == UNNAMED ? NameGenerator.genBuilding() : name;
			_type = type;
			_populationCurrent = _populationMax = 100;
			_garrisonCurrent = _garrisonMax = 30;
			_incomeCurrent = _incomeMax = 5;
		}
		
	}

}