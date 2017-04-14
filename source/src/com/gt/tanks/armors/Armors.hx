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
		return 0;
	}

	public function push(value:Armor):Void
	{
		#if java
		_list.add(value);
		#elseif flash
		_list.push(value);
		#end
	}
	
	public function pop():Void
	{
		#if java
		_list.remove(_list.size()-1);
		#elseif flash
		_list.pop();
		#end
	}
	
	public function set(index:Int, value:Armor):Void
	{
		#if java
		_list.set(index, value);
		#elseif flash
		_list[index] = value;
		#end
	}

	public function get(index:Int):Armor
	{
		#if java
		return _list.get(index);
		#elseif flash
		return _list[index];
		#end
		return null;
	}
		
	
	public function indexOf(armor:Armor):Int
	{
		#if java
		return _list.indexOf(armor);
		#elseif flash
		return _list.indexOf(armor);
		#end
		return -1;
	}
	
}