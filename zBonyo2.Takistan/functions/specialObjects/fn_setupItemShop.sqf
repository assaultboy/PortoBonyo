/*
	BONOY_fnc_setupItemShop
	
	DESCRIPTION:
		This function adds the item shop addactions to the given object
		
	PARAMETERS:
		Object
			Object that will be given actions
			
	RETURNS
		nothing
		
	EXAMPLE
		 _object call BONOY_fnc_setupItemShop
*/

private ["_object"];

_object = _this;

if (isNil "_object") then {
	["The given argument is nil"] call BIS_fnc_error;
};

_object allowDamage false;

clearWeaponCargoGlobal _object;
clearMagazineCargoGlobal _object;
clearItemCargoGlobal _object;

_object addAction ["Purchase UAV terminal: $100",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 100] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["B_UavTerminal",1];
		
		hint "UAV Terminal purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Mortarman Tools: $10",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 10] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["ACE_RangeTable_82mm",1];
		_box addItemCargoGlobal ["ACE_MapTools",1];
		
		hint "Mortarman Tools purchased";
	} else {
		hint "You do not have enough for that";
	};
}];