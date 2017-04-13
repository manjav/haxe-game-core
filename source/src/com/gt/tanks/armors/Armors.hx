package com.gt.tanks.armors;

#if java
	import java.util.ArrayList;
#elseif flash
	import flash.Vector;
#end

/**
 * ...
 * @author Mansour Djawadi
 */

 
 

class Armors 
{

#if java
	private var _list:ArrayList<Armor>;
#elseif flash
	private var _list:Vector<Armor>;
#end


	
	public function new() 
	{
#if java
	_list = new ArrayList<Armor>();
#elseif flash
	_list = new Vector<Armor>();
#end
	}
	
	public function length():Int
	{
#if java
	return _list.size();
#elseif flash
	return _list.length;
#end
	}
	
	public function push(value:Armor):Void
	{
#if java
	_list.add(value);
#elseif flash
	_list.push(value);
#end
	}

	
}