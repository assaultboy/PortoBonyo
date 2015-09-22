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

//Created a spacer with the same format as the rest, Feel free to fix this up.
_object addAction ["<t color='#FF0000'>--Assault Rifles------------------------------</t>",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 1] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["",0];
		
		hint "You're an idiot...";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase AK74 $250",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 250] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_arifle_AK74",1];
		_box addItemCargoGlobal ["CUP_30Rnd_545x39_AK_M",4];
		
		hint "AK74 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase AK107 $500",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 500] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_arifle_AK107",1];
		_box addItemCargoGlobal ["CUP_30Rnd_545x39_AK_M",4];
		
		hint "AK107 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase AKS Gold $2000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 2000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_arifle_AKS_Gold",1];
		_box addItemCargoGlobal ["CUP_30Rnd_762x39_AK47_M",4];
		
		hint "AK-74 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase FN FAL Battle Rifle $5000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 5000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_arifle_FNFAL_railed",1];
		_box addItemCargoGlobal ["CUP_20Rnd_762x51_FNFAL_M",4];
		
		hint "FN FAL Battle Rifle purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase G36C $2000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 2000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_arifle_G36C",1];
		_box addItemCargoGlobal ["CUP_30Rnd_556x45_G36",4];
		
		hint "G36C purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase L85A2 Assault Rifle $5000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 5000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_arifle_L85A2",1];
		_box addItemCargoGlobal ["CUP_30Rnd_556x45_Stanag",4];
		
		hint "L85A2 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M16A2 $900",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 900] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_arifle_M16A2",1];
		_box addItemCargoGlobal ["CUP_30Rnd_556x45_Stanag",4];
		
		hint "M16A2 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M4A1 (Desert) $1500",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 1500] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_arifle_M4A1_desert",1];
		_box addItemCargoGlobal ["CUP_30Rnd_556x45_Stanag",4];
		
		hint "M4A1 (Desert) purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Mk16 Mod 0 $5000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 5000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_arifle_Mk16_STD_FG",1];
		_box addItemCargoGlobal ["CUP_30Rnd_556x45_Stanag",4];
		
		hint "Mk16 Mod 0 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Mk17 Mod 0 battle rifle $6000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 6000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_arifle_Mk17_CQC",1];
		_box addItemCargoGlobal ["CUP_20Rnd_762x51_B_SCAR",4];
		
		hint "Mk17 Mod 0 battle rifle purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase XM8 $2500",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 2500] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_arifle_XM8_Railed",1];
		_box addItemCargoGlobal ["CUP_30Rnd_556x45_Stanag",4];
		
		hint "XM8 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];