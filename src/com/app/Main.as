package com.app
{
	import com.app.data.character.Character;
	import com.app.data.property.Property;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Thomas Gattenhof
	 */
	public class Main extends Sprite 
	{
		
		//===========================================================0
		public function Main():void 
		{
			trace("Hello World");
			var tChar:Character = new Character();
			trace("My name is:", tChar.name);
			
			var building1:Property = new Property();
			
		}
		
	}
	
}