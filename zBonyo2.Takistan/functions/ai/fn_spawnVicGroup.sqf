/*
	BONYO_fnc_spawnVicGroup
	
	DESCRIPTION:
		This function spawns a random enemy vehicle at the given point
		This function must be called on the server
		
	PARAMETERS:
		3DPosition
			The location to spawn the AI
			
	RETURNS
		Group
			the group that was spawned
		
	EXAMPLE
		 _pos call BONYO_fnc_spawnVicGroup
*/
if (!isServer) then {
	["This function must be executed on the server"] call BIS_fnc_error;
};

private ["_groupProto","_grp","_spawnPoint","_vic"];

_groupProto = [];
_spawnPoint = _this;
_grp = createGroup EAST;

//Choose a random faction to load
#include "infantry\loadFaction.sqf"

//Choose a random vehicle and create it
#include "vehicle\vehicles.sqf"

//Add the vehicle to the group
_grp addVehicle _vic;

//Spawn each member of the group and set them up for bonyo
{
	private ["_unit"];
	
	_unit = (_grp createUnit [_x select 0, _spawnPoint, [], 0, "NONE"]);
	[_unit] join _grp;
	
	_unit setRank (_x select 1);
	
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
} forEach [[_rifleman, "SERGEANT"],[_rifleman, "CORPORAL"],[_rifleman, "PRIVATE"]];

//Make the units get into their vehicle
(units _grp) orderGetIn true;

//Add every unit in the group to the curator list
{
	_x addCuratorEditableObjects [units _grp, true];
} forEach allCurators;

//Add units to the enemy list so we can check if they're all dead
[-2, {
	{
		BONYO_var_enemyList pushBack _x;
	} forEach units _this;
}, _grp] call CBA_fnc_globalExecute;

_grp;