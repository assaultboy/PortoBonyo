private ["_pos","_i","_box","_vicList"];


"awayMission" setMarkerText "Logistics Cache";

[-1, {
	["AwayMission",["Logistics Cache"]] call BIS_fnc_showNotification;
}] call CBA_fnc_globalExecute;

_pos = _this;

//Spawn a few groups
for [{_i=0}, {_i<count (call CBA_fnc_players)}, {_i=_i+1}] do {
	private ["_grp","_newPos"];
	
	_newPos = [(_pos select 0) + ((random 200) - 100), (_pos select 1) + ((random 200) - 100), 0];
	
	_grp = _newPos call BONYO_fnc_spawnInfGroup;
	
	[_grp, _pos, (random 240) + 10] call BIS_fnc_taskPatrol;
	
	{
		BONYO_var_awayList pushBack _x;
	} forEach units _grp;
};

_box = ("B_Slingload_01_Cargo_F" createVehicle _pos);
_vicList pushback "B_G_Offroad_01_armed_F"; //Please work ("")(-.-)("")

BONYO_var_awayList pushBack _box;

clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

//Add random mags
_box addMagazineCargoGlobal ["ACE_Wheel", round random 25];
_box addMagazineCargoGlobal ["ACE_Track", round random 6];
_box addMagazineCargoGlobal ["ToolKit", round random 20];
_box addMagazineCargoGlobal ["ACE_wirecutter", round random 10];
_box addMagazineCargoGlobal ["ACE_UAVBattery", round random 10];
_box addMagazineCargoGlobal ["ACE_key_west", round random 1];
_box addMagazineCargoGlobal ["ACE_SandbagObject", round random 99];


