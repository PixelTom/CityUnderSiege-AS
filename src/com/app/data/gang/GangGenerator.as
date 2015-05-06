package com.app.data.gang 
{
	import com.app.data.character.Character;
	import com.app.utils.AppUtils;
	//===========================================================0
	/**
	 * ...
	 * @author ...
	 */
	public class GangGenerator 
	{
		
		static private var _availableGangs:Array;
		
		//===========================================================0
		static public function generate():Gang
		{
			trace("Generating a gang....");
			if (!_availableGangs) {
				_availableGangs = GangData.getGangs();
			}
			_availableGangs = AppUtils.shuffleArray(_availableGangs);
			return getDefault(_availableGangs.pop());
		}
		
		//===========================================================0
		static public function getDefault(gangName:String):Gang
		{
			trace("Name:", gangName);
			var gang:Gang = new Gang(gangName);
			gang.members = generateMembers(gang);
			
			return gang;
		}
		
		//===========================================================0
		private static function generateMembers(gang:Gang):Array
		{
			trace("Gang Members:");
			var members:Array = new Array();
			
			for (var i:int = 0; i < AppUtils.rn(5, 10); i++)
			{
				var member:Character = new Character(gang.name);
				member.gang = gang;
				members.push(member);
			}
			
			return members;
		}
	}

}