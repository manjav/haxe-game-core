package com.gt.tanks.armors;

class Armor
{

	public function new(type:Int)
	{
		this.type = type;
	}
	
	private var type:Int;
	public function get_type():Int 
	{
		return type;
	}
	
	private var unlockLevel:Int;
	public function get_unlockLevel():Int 
	{
		return unlockLevel;
	}	
	
	private var destrsuction:Float = 0;
	public function get_destrsuction():Float 
	{
		return destrsuction;
	}

}