package com.gt.tanks;
import com.gt.tanks.armors.Armor;
import com.gt.tanks.armors.ArmorType;

/**
 * ...
 * @author Mansour Djawadi
 */

class Player implements IPlayer
{
	private var armors(get, null):Map<ArmorType, Armor>;
	

	public function new() 
	{
		_armors = [
		ArmorType.simple => new SimpleArmor(),
		ArmorType.heavy => new HeavyArmor()
		];
	}
	
	public function get_armors():Map<ArmorType, Armor> 
	{
		return armors;
	}
	

	
}