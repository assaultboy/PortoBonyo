/*
	BONOY_fnc_spawnUnit
	
	DESCRIPTION:
		This function spawns the given unit with the given parameters
		
	PARAMETERS:
		String
			The class name of the unit to spawn
		String
			The rank of the unit to spawn
		3DPosition
			3D vector to spawn the unit at
		Group
			The group to spawn the unit in
			
	RETURNS
		Object
			The create unit
		
	EXAMPLE
		 [_rifleman, "PRIVATE", position player, group player] call BONYO_fnc_spawnUnit
*/

private [_unit];

_unit = ((_this select 3) createUnit [_this select 0, _this select 2, [], 0, "NONE"]);
[_unit] join (_this select 3);

_unit setRank (_this select 1);

//Give the unit's killer money
_unit addEventHandler ["killed", {
	private ["_unit","_killer","_reward"];
	
	_unit = (_this select 0);
	_killer = (_this select 1);
	
	_reward = 1;
	
	switch (rank _unit) do {
		case "PRIVATE": {_reward = 10};
		case "CORPORAL": {_reward = 15};
		case "SERGEANT": {_reward = 20};
		case "LIEUTENANT": {_reward = 25};
		case "CAPTAIN": {_reward = 30};
		case "MAJOR": {_reward = 35};
		case "COLONEL": {_reward = 40};
	};
	
	[-2, {
		if (local (_this select 0)) then {
			[player,_this select 1,true] call BONYO_fnc_giveMoney;
		};
	}, [_killer,_reward]] call CBA_fnc_globalExecute;
}];

_unit
