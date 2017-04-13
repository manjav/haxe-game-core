package com.gt.tanks;
import com.gt.tanks.armors.Armor;
import com.gt.tanks.armors.ArmorType;
#if flash
import flash.Vector;
#end
/**
 * @author Mansour Djawadi
 */
interface IPlayer 
{
	
#if flash
	function get_armors():Vector<Armor>;
#end

#if Java
#end

	function get_armor(type:Int):Armor;
	function get_money():Int;
	
}