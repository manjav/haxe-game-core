package
{
	import com.gt.tanks.Player;
	import com.gt.tanks.armors.ArmorType;
	
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.filesystem.File;
	import flash.filesystem.FileStream;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;
	
	public class TestMain extends Sprite
	{
		public function TestMain()
		{
			var file:File = File.desktopDirectory.resolvePath("haxe-tanks-core\\source\\bin\\flash\\core.swf");
			
			var fileStream:FileStream = new FileStream();
			fileStream.addEventListener(Event.COMPLETE, fileStream_completeHandler);
			fileStream.addEventListener(IOErrorEvent.IO_ERROR, fileStream_ioReadErrorHandler);
			//fileStream.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			fileStream.openAsync(file, "read");
		}
		private function fileStream_ioReadErrorHandler(e:IOErrorEvent):void
		{
		}
		private function fileStream_completeHandler(e:Event):void
		{
			var fileStream:FileStream = e.currentTarget as FileStream;
			var bytes:ByteArray = new ByteArray();
			fileStream.readBytes(bytes, 0, fileStream.bytesAvailable);
			fileStream.close();
			
			var loader:Loader = new Loader();
			var loaderContext:LoaderContext = new LoaderContext(false, ApplicationDomain.currentDomain);
			loaderContext.allowLoadBytesCodeExecution = true;
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loaderInfo_completeHandler);
			loader.loadBytes(bytes, loaderContext);
			//loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, loaderErrored);
			bytes.position= 0;
		}
		private function loaderInfo_completeHandler(e:Event):void 
		{
			//var loader:Loader = e.currentTarget.loader;
			var dash:Class = e.currentTarget.applicationDomain.getDefinition("com.gt.tanks.Player")  as  Class;
			
			var p:Player = new dash();
			//trace(p.get_armors().get(ArmorType.heavy).unlockLevel);
			trace(p.get_armors().get(ArmorType.SIMPLE).get_destrsuction());
		}
		
		/*-define=CONFIG::debugging,true
		In ActionScript, you can use this value to conditionalize statements; for example:
		
		CONFIG::debugging
		{
			// Execute debugging code here.
		}*/
	}
}