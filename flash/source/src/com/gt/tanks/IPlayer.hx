package com.gt.tanks;
import com.gt.tanks.armors.Armor;
import com.gt.tanks.armors.ArmorType;

/**
 * @author Mansour Djawadi
 */
interface IPlayer 
{
	function get_armors():Map<ArmorType, Armor>;
}