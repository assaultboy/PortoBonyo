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
_object addAction ["<t color='#FF0000'>--Grenade Launchers------------------------------</t>",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 1] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["",0];
		
		hint "You're an idiot...";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M32 $14000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 14000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_glaunch_M32",1];
		_box addItemCargoGlobal ["CUP_6Rnd_HE_M203",4];
		_box addItemCargoGlobal ["CUP_6Rnd_FlareWhite_M203",2];
		_box addItemCargoGlobal ["CUP_6Rnd_Smoke_M203",2];
		
		hint "M32 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M79 $2000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 2000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_glaunch_M79",1];
		_box addItemCargoGlobal ["CUP_1Rnd_HE_M203",8];
		_box addItemCargoGlobal ["CUP_FlareWhite_M203",3];
		_box addItemCargoGlobal ["CUP_1Rnd_Smoke_M203",3];
		
		hint "M79 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

//Created a spacer with the same format as the rest, Feel free to fix this up.
_object addAction ["<t color='#FF0000'>--AA Launchers------------------------------</t>",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 1] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["",0];
		
		hint "You're an idiot...";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase FIM-92 Stinger $6000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 6000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_launch_FIM92Stinger",1];
		_box addItemCargoGlobal ["CUP_Stinger_M",3];
		
		hint "FIM-92 Stinger purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Strela-2 9K32 $5000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 5000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_launch_9K32Strela",1];
		_box addItemCargoGlobal ["CUP_Strela_2_M",3];
		
		hint "Strela-2 9K32 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Igla 9K38 $5000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 5000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_launch_Igla",1];
		_box addItemCargoGlobal ["CUP_Igla_M",3];
		
		hint "Igla 9K38 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

//Created a spacer with the same format as the rest, Feel free to fix this up.
_object addAction ["<t color='#FF0000'>--AT Launchers------------------------------</t>",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 1] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["",0];
		
		hint "You're an idiot...";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M47 Dragon $4000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 4000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_launch_M47",1];
		_box addItemCargoGlobal ["CUP_Dragon_EP1_M",4];
		
		hint "M47 Dragon purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M3 MAAWS $5000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 5000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_launch_MAAWS",1];
		_box addItemCargoGlobal ["CUP_MAAWS_HEAT_M",2];
		_box addItemCargoGlobal ["CUP_MAAWS_HEDP_M",2];
		
		hint "M3 MAAWS purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Metis Launcher $6000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 6000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_launch_Metis",1];
		_box addItemCargoGlobal ["CUP_AT13_M",4];
		
		hint "Metis Launcher purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase NLAW $4000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 4000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_launch_NLAW",1];
		_box addItemCargoGlobal ["CUP_NLAW_M",4];
		
		hint "NLAW purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase FGM-148 Javelin $10000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 10000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_launch_Javelin",1];
		_box addItemCargoGlobal ["CUP_Javelin_M",4];
		
		hint "FGM-148 Javelin purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Mk153 Mod 0 SMAW $6500",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 6500] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_launch_Mk153Mod0",1];
		_box addItemCargoGlobal ["CUP_SMAW_HEAA_M_N",2];
		_box addItemCargoGlobal ["CUP_SMAW_HEDP_M_N",2];
		
		hint "Mk153 Mod 0 SMAW purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

//Created a spacer with the same format as the rest, Feel free to fix this up.
_object addAction ["<t color='#FF0000'>--Disposable AT Launchers------------------------------</t>",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 1] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["",0];
		
		hint "You're an idiot...";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase RPG-18 $1000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 1000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_launch_RPG18",1];
		_box addItemCargoGlobal ["CUP_RPG18_M",1];
		
		hint "RPG-18 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M136 AT-4 launcher $1500",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 1500] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_launch_M136",1];
		_box addItemCargoGlobal ["CUP_M136_M",1];
		
		hint "M136 AT-4 launcher purchased";
	} else {
		hint "You do not have enough for that";
	};
}];