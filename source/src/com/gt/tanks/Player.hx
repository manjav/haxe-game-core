package com.gt.tanks;

import com.gt.tanks.armors.Armor;
import com.gt.tanks.armors.Armors;
import com.gt.tanks.armors.HeavyArmor;
import com.gt.tanks.armors.SimpleArmor;

#if java
	import java.util.List;
#elseif flash
	import flash.Vector;
#end

/**
 * ...
 * @author Mansour Djawadi
 */

class Player
{
/*	#if flash
	private var armors:Vector<Armor>;
	public function get_armors():Vector<Armor>
	{
		return armors;
	}
	#end
	
	#if java
	
	public function get_armors():java.util.List<Armor>
	{
		return armors;
	}
	
	#elseif flash
	
	private var armors:Vector<Armor>;
	public function get_armors():Vector<Armor>
	{
		return armors;
	}
	
	#end

	private var money:Int;
	public function get_money():Int
	{
		return money;
	}
	
*/
	public function new()
	{
		armors = new  Armors();
		//armors.
	}
/*
		#if java
		armors = new java.util.List<Armor>();
		#elseif flash
		armors = new Vector<Armor>();
		#end

		armors.push(new SimpleArmor());
		armors.push(new HeavyArmor());
	}
	
	
	public function get_armor(type:Int):Armor
	{
		var i:UInt = 0;
		var len:UInt = armors.length;
		var armor:Armor = null;
		while (i < len)
		{
			armor = armors[i];
			if (armor.type == type)
				return armor ;
			i++;
		}
		return null;
	}*/
	
	private var armors:Armors;
	public function get_armors():Armors
	{
		return null;
	}
	
}