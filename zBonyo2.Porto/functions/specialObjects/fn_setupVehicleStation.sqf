/*
	BONOY_fnc_setupVehicleStation
	
	DESCRIPTION:
		This function adds the vehicle station addactions to the given object
		
	PARAMETERS:
		Object
			Object that will be given actions
			
	RETURNS
		nothing
		
	EXAMPLE
		 _object call BONOY_fnc_setupVehicleStation
*/

private ["_object"];

_object = _this;

if (isNil "_object") then {
	["The given argument is nil"] call BIS_fnc_error;
};

_object enableSimulation false;
_object allowDamage false;

_object addAction ["Get Prices", {
	private ["_vic"];
	
	_vic = (nearestObjects [_this select 0, ["LandVehicle","Air","Ship"], 20]) select 0;
	
	if (isNil "_vic") then {
		hint "No Vehicle in Range";
	} else {
		private ["_str","_health"];
		
		_health = 0;
		
		_str = "Costs for '" + (_vic call BONYO_fnc_getVehicleDisplayName) + "'\n";
		
		//Calculate health
		{
			_health = _health + (_x * 200);
		} forEach ((getAllHitPointsDamage _vic) select 2);
		
		_str = _str + "Repair: $" + (str (ceil _health)) + "\n";
		
		//Calculate Fuel
		_str = _str + "Refuel: $" + (str ceil ((1 - fuel _vic) * 500)) + "\n";
		
		hint _str;
	}
}];

_object addAction ["Repair Vehicle", {
	private ["_vic","_cost"];
	
	_vic = (nearestObjects [_this select 0, ["LandVehicle","Air","Ship"], 20]) select 0;
	
	if (isNil "_vic") then {
		hint "No Vehicle in Range";
	} else {
		private ["_health"];
		
		_health = 0;
		
		//Calculate health and try to purchase
		{
			_health = _health + (_x * 200);
		} forEach ((getAllHitPointsDamage _vic) select 2);
		
		if ([player, ceil _health] call BONYO_fnc_purchase) then {
			{
				_vic setHitPointDamage [_x, 0];
			} forEach ((getAllHitPointsDamage _vic) select 0);
			
			hint ((_vic call BONYO_fnc_getVehicleDisplayName) + " has been repaired for $" + str ceil _health);
		} else {
			hint "You do not have enough money for this";
		}
	}
}];

_object addAction ["Rearm Vehicle", {}];

_object addAction ["Sell Vehicle", {}];