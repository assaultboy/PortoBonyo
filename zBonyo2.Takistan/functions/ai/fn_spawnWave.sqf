/*
	BONYO_fnc_spawnWave
	
	DESCRIPTION:
		This function automatically spawns a wave of enemies proportional to the wave number and number of players
		This function must be called on the server
		
	PARAMETERS:
		Wave Number (DEFAULT: BONYO_var_wave)
			The wave number to spawn a wave for
			
	RETURNS
		nothing
		
	EXAMPLE
		 10 call BONYO_fnc_spawnWave
*/

if (!isServer) then {
	["This function must be executed on the server"] call BIS_fnc_error;
};

//Cleanup the last round
{
	//If it's dead delete it
	if (!alive _x) then {
		deleteVehicle _x;
	} else {
		//If it's a weapon pile that isn't in the donation area, delete it
		if (_x isKindof "WeaponHolderSimulated" || _x isKindof "WeaponHolder") then {
			if (!(_x getVariable ["bonyo_donationAction",false])) then {
				deleteVehicle _x;
			};
		};
	};
} forEach (getMarkerPos "respawn_west" nearObjects 10000);

private ["_wave","_playerCount","_maxGroups","_groupCount"];

_wave = _this;

if (isNil "_wave") then {
	_wave = BONYO_var_wave;
};

_playerCount = count (call CBA_fnc_players);

_maxGroups = 3 + (_playerCount * 0.75);

_maxGroups = round _maxGroups;

_groupCount = (_wave min _maxGroups);


private ["_i"];

//Spawn the number of groups we need
for [{_i=1}, {_i<=_groupCount}, {_i=_i+1}] do {
	private ["_grp"];
	_grp = (getMarkerPos (BONYO_var_enemySpawn_inf call BIS_fnc_selectRandom)) call BONYO_fnc_spawnInfGroup;
	_grp addWaypoint [getMarkerPos "respawn_west", 50];
};

//Spawn a vehicle maybe
if (random _wave >= 1) then {
	private ["_div"];
	
	//First number is number of rounds between vehicle spawn
	//Second number is the coefficient, lower means more vehicles
	_div = ((_wave - (_wave mod 3)) / 2);
	
	if (_div > 5 + count (call CBA_fnc_players)) then { //Vehicle count must be less than the number of players + 5
		_div = count (call CBA_fnc_players);
	};
	
	for [{_i=1}, {_i <=_div}, {_i=_i+1}] do {
		private ["_vGrp"];
		
		_vGrp = ((getMarkerPos (BONYO_var_enemySpawn_vic call BIS_fnc_selectRandom)) call BONYO_fnc_spawnVicGroup);
		
		_vGrp addWaypoint [getMarkerPos "respawn_west", 50];
	};
};

//Spawn Aircraft maybe
if (random _wave >= 1) then {
	private ["_div"];
	
	//First number is number of rounds between vehicle spawn
	//Second number is the coefficient, lower means more vehicles
	_div = ((_wave - (_wave mod 5)) / 5);
	
	if (_div > 3 + count (call CBA_fnc_players)) then { //Vehicle count must be less than the number of players + 3
		_div = count (call CBA_fnc_players);
	};
	
	for [{_i=1}, {_i <=_div}, {_i=_i+1}] do {
		private ["_aGrp"];
		
		_aGrp = ((getMarkerPos (BONYO_var_enemySpawn_air call BIS_fnc_selectRandom)) call BONYO_fnc_spawnAirGroup);
		
		_aGrp addWaypoint [getMarkerPos "respawn_west", 50];
	};
};

//Start the round tracker
[] spawn {
	//As long as there is an enemy alive keep looping
	while {
		private ['_alive'];
		
		_alive = false;
		
		{
			if (alive _x) then {
				_alive = true;
			};
		} forEach BONYO_var_enemyList;
		
		_alive;
	} do {
		sleep 1;
	};
	
	//When all enemies are dead, pop a notification on everyone's screen
	[-1, {
		[["WaveComplete1","WaveComplete2","WaveComplete3","WaveComplete4","WaveComplete5","WaveComplete6","WaveComplete7","WaveComplete8","WaveComplete9","WaveComplete10"] call BIS_fnc_selectRandom,[_this]] call BIS_fnc_showNotification;
		[player, 100, true] call BONYO_fnc_giveMoney;
	},BONYO_var_wave] call CBA_fnc_globalExecute;
};