package com.gt.armors;

/**
 * ...
 * @author Mansour Djawadi
 */

class Player 
{
	public var armors:Map<ArmorType, Armor>;

	
	public function new() 
	{
		armors = [
		ArmorType.simple => new SimpleArmor(),
		ArmorType.heavy => new HeavyArmor()
		];
	}
}