package;

import com.gt.tanks.IPlayer;
import com.gt.tanks.Player;
import com.gt.tanks.armors.ArmorType;

/**
 * ...
 * @author Mansour Djawadi
 */
class Main 
{
	static private var player:Player;
	
	static function main() 
	{
		player = new Player();
		//trace(player.get_armor(ArmorType.HEAVY).unlockLevel);
	}
	
}