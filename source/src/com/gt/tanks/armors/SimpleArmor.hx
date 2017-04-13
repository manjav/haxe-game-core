package com.gt.tanks.armors;

/**
 * ...
 * @author Mansour Djawadi
 */
class SimpleArmor extends Armor
{
	
	public function new()
	{
		super();
		type = ArmorType.SIMPLE;
		destrsuction = 1.5;
	}
	
}