package com.gt.tanks;

import com.gt.tanks.armors.Armor;
import com.gt.tanks.armors.ArmorType;
import com.gt.tanks.armors.Armors;
import com.gt.tanks.armors.HeavyArmor;
import com.gt.tanks.armors.SimpleArmor;


/**
 * ...
 * @author Mansour Djawadi
 */

class Player
{

	public function new()
	{
		armors = new  Armors();
		armors.set(ArmorType.SIMPLE, new SimpleArmor());
		armors.set(ArmorType.HEAVY, new HeavyArmor());
	}

	private var money:Int;
	public function get_money():Int
	{
		return money;
	}
	
	private var armors:Armors;
	public function get_armors():Armors
	{
		return armors;
	}
	
}