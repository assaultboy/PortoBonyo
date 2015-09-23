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

_object addAction ["Purchase UAV Kit: $1000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 1000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["B_UavTerminal",1];
		_box addBackpackCargoGlobal ["B_UAV_01_backpack_F",1];
		
		hint "UAV Kit purchased";
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

_object addAction ["Purchase HMG: $15000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 15000] call BONYO_fnc_purchase) then {
		_box addBackpackCargoGlobal ["I_HMG_01_support_F",1];
		_box addBackpackCargoGlobal ["I_HMG_01_weapon_F",1];
		
		hint "HMG purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase HMG (Raised): $15000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 15000] call BONYO_fnc_purchase) then {
		_box addBackpackCargoGlobal ["I_HMG_01_support_high_F",1];
		_box addBackpackCargoGlobal ["I_HMG_01_high_weapon_F",1];
		
		hint "HMG (Raised) purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase HuntIR Round: $200",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 200] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["ACE_HuntIR_M203",4];
		
		hint "HuntIR Round purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Kestrel 4500NV: $200",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 200] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["ACE_Kestrel4500",4];
		
		hint "Kestrel 4500NV purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Spotting Scope: $300",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 300] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["ACE_SpottingScope",1];
		
		hint "Spotting Scope purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Telescopic Ladder: $100",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 100] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["ACE_TacticalLadder_Pack",1];
		
		hint "Telescopic Ladder purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase SSWT Kit (Tripod): $500",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 300] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["ACE_Tripod",1];
		
		hint "SSWT Kit (Tripod) purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase AA Kit: $2000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 2000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_launch_FIM92Stinger",1];
		_box addItemCargoGlobal ["CUP_Stinger_M",1];
		
		hint "AA Kit purchased";
	} else {
		hint "You do not have enough for that";
	};
}];