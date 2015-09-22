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
_object addAction ["<t color='#FF0000'>--Small Machine Guns------------------------------</t>",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 1] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["",0];
		
		hint "You're an idiot...";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase PP-19 Bizon $700",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 700] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_smg_bizon",1];
		_box addItemCargoGlobal ["CUP_64Rnd_9x19_Bizon_M",5];
		
		hint "PP-19 Bizon purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase MP5A5 $750",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 750] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_smg_MP5A5",1];
		_box addItemCargoGlobal ["CUP_30Rnd_9x19_MP5",4];
		
		hint "MP5A5 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

//Created a spacer with the same format as the rest, Feel free to fix this up.
_object addAction ["<t color='#FF0000'>--Light Machine Guns------------------------------</t>",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 1] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["",0];
		
		hint "You're an idiot...";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase PKP Pecheneg $8000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 8000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_lmg_Pecheneg",1];
		_box addItemCargoGlobal ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",4];
		
		hint "PKP Pecheneg purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase PKM $9000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 9000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_lmg_PKM",1];
		_box addItemCargoGlobal ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",4];
		
		hint "PKM purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase UK59 $9500",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 9500] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_lmg_UK59",1];
		_box addItemCargoGlobal ["CUP_50Rnd_UK59_762x54R_Tracer",4];
		
		hint "UK59 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase L86A2 LSW $10000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 10000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_arifle_L86A2",1];
		_box addItemCargoGlobal ["CUP_100Rnd_556x45_BetaCMag",4];
		
		hint "L86A2 LSW purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase L110A1 $10000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 10000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_lmg_L110A1",1];
		_box addItemCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1",1];
		_box addItemCargoGlobal ["CUP_30Rnd_556x45_Stanag",5];
		
		
		hint "L110A1 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase L7A2 $10000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 10000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_lmg_L7A2",1];
		_box addItemCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4];
		
		hint "L7A2 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase MG36 $7000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 7000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_arifle_MG36_camo",1];
		_box addItemCargoGlobal ["CUP_100Rnd_556x45_BetaCMag",4];
		
		hint "MG36 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M249 $9000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 9000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_lmg_M249",1];
		_box addItemCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",4];
		
		hint "M249 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M240 $12000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 12000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_lmg_M240",1];
		_box addItemCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4];
		
		hint "M240 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M60E4 $11000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 11000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_lmg_M60A4",1];
		_box addItemCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4];
		
		hint "M60E4 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Mk48 Mod 0 $6000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 6000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_lmg_Mk48_des",1];
		_box addItemCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4];
		
		hint "Mk48 Mod 0 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];