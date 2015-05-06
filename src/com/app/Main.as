package com.app
{
	import com.app.config.Config;
	import com.app.data.character.Character;
	import com.app.data.property.Property;
	import com.app.game.Session;
	import com.app.utils.AppUtils;
	import com.app.view.StarlingStage;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import starling.core.Starling;
	import starling.utils.HAlign;
	import starling.utils.VAlign;
	
	//===========================================================0
	/**
	 * ...
	 * @author Thomas Gattenhof
	 */
	public class Main extends Sprite 
	{
		private var _starling:Starling;
		private var _session:Session;
		
		//===========================================================0
		public function Main():void 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init, false, 0, true);
		}
		
		//===========================================================0
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			_starling = new Starling(StarlingStage, this.stage, new Rectangle(0, 0, this.stage.stageWidth, this.stage.stageHeight), null, "auto", "baseline");
			
			if (Config.SHOW_STARLING_STATS) {
				_starling.showStats = true;
				_starling.showStatsAt(HAlign.LEFT, VAlign.TOP);
			}
			
			_session = new Session();
			_session.newGame();
		}
		
	}
	
}