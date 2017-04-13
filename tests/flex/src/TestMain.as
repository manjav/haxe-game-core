package
{
	import com.gt.tanks.IPlayer;
	
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.filesystem.File;
	import flash.net.URLRequest;
	
	public class TestMain extends Sprite
	{
		public function TestMain()
		{
			super();
			
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loaderInfo_completeHandler);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, loaderInfo_completeHandler);
			loader.load(new URLRequest(File.desktopDirectory.resolvePath( "core.swf").url));
		}
		
		private function loaderInfo_completeHandler(e:Event):void 
		{
			//var loader:Loader = e.currentTarget.loader;
			var dash:Class = e.currentTarget.applicationDomain.getDefinition("com.gt.tanks.Player")  as  Class;
			
			var p:IPlayer = new dash();
			//trace(p.get_armors().get(ArmorType.heavy).unlockLevel);
			trace(p.get_armor(1).destrsuction);
		}
		
	}
}