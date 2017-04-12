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
		type = ArmorType.simple;
		_destrsuction = 1.5;
	}
	
}