package com.gt.tanks.armors;

class Armor
{
	
	public var type:Int;
	public var unlockLevel:Int;
	

	public function new()
	{
	}
	
	private var destrsuction:Float = 0;
	public function get_destrsuction():Float 
	{
		return destrsuction;
	}

}