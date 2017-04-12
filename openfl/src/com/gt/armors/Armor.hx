package com.gt.armors;

class Armor
{
	
	public var type:ArmorType;
	public var unlockLevel:Int;
	

	public function new()
	{
	}
	
		
	
	private var _destrsuction:Float = 0;
	public function GetDestrsuction():Float 
	{
		return _destrsuction;
	}
	/*
	
	public function get lifetime():Number
	{
		return 0;
	}

	public function get weight():Number
	{
		return 0;
	}*/
}