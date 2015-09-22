private ["_rifleman","_mg","_marksman","_teamLeader","_squadLeader","_officer","_riflemanAT","_medic","_sniper","_spotter","_engineer","_exSpecialist","_grenadier","_crewman","_pilot","_aircrew"];

//Choose a random faction to load
switch ([1,2,3,4,5,6,7,8,9] call BIS_fnc_selectRandom) do {
	case 1: {
		#include "factions\aaf.sqf"
	};
	
	case 2: {
		#include "factions\fia.sqf"
	};
	
	case 3: {
		#include "factions\mercenaries.sqf"
	};
	
	case 4: {
		#include "factions\ionpmc.sqf"
	};
	
	case 5: {
		#include "factions\nato.sqf"
	};
	
	case 6: {
		#include "factions\russianfed.sqf"
	};
	
	case 7: {
		#include "factions\usaa.sqf"
	};
	
	case 8: {
		#include "factions\usmc.sqf"
	};
	
	case 9: {
		#include "factions\baf.sqf"
	};
};