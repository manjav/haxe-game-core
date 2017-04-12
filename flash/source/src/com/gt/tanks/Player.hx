package com.gt.tanks;

import com.gt.tanks.armors.Armor;
import com.gt.tanks.armors.ArmorType;
import com.gt.tanks.armors.HeavyArmor;
import com.gt.tanks.armors.SimpleArmor;

/**
 * ...
 * @author Mansour Djawadi
 */

class Player implements IPlayer
{
	private var armors(get, null):Map<ArmorType, Armor>;
	private var money(get, null):UInt;
	
	public function new() 
	{
		armors = [
		ArmorType.simple => new SimpleArmor(),
		ArmorType.heavy => new HeavyArmor()
		];
	}
	
	public function get_armors():Map<ArmorType, Armor> 
	{
		return armors;
	}
	
	public function get_money():UInt 
	{
		return money;
	}
}