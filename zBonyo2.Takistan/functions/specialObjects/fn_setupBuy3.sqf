/*
	BONYO_fnc_setupBuy
	
	DESCRIPTION:
		
	PARAMETERS:
		Object
			The object to add actions to
			
	RETURNS
		nothing
		
	EXAMPLE
*/

private ["_object"];

_object = _this;

if (isNil "_object") then {
	["The given argument is nil"] call BIS_fnc_error;
};

_object enableSimulation false;
_object allowDamage false;

_object addAction ["<t color='#FF0000'>--Ammo/Weapons/Boxes------------------------------</t>", "", nil, 6, false, true];

_object addAction ["Buy Basic Weapons (NATO) $10000", {["Box_NATO_Wps_F", 10000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Basic Weapons (US Army) $10000", {["CUP_USBasicWeapons_EP1", 10000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Basic Weapons (USMC) $10000", {["CUP_USBasicWeaponsBox", 10000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Basic Launchers (NATO) $15000", {["Box_NATO_WpsLaunch_F", 15000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Special Weapons (NATO) $20000", {["Box_NATO_WpsSpecial_F", 20000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Special Weapons (US Army) $20000", {["CUP_USSpecialWeapons_EP1", 20000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Special Weapons (USMC) $20000", {["CUP_USSpecialWeaponsBox", 20000] call BONYO_fnc_buyFort}, nil, 6, false, true];
