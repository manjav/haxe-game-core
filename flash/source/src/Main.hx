package;

import com.gt.tanks.IPlayer;
import com.gt.tanks.Player;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.Lib;

/**
 * ...
 * @author Mansour Djawadi
 */
class Main 
{
	static public var player:IPlayer;
	
	static function main() 
	{
		player = new Player();
	}
	
}