package com.gt.tanks.armors;

class Armor
{
	
	public var type:ArmorType;
	public var unlockLevel:Int;
	

	public function new()
	{
		
	}
	
	private var _destrsuction(get, null):Float = 0;
	public function get__destrsuction():Float 
	{
		return _destrsuction;
	}

}