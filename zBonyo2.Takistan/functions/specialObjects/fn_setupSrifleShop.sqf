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
_object addAction ["<t color='#FF0000'>--Sniper Rifles------------------------------</t>",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 1] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["",0];
		
		hint "You're an idiot...";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase L115A1  $4000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 4000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_srifle_AWM_des",1];
		_box addItemCargoGlobal ["CUP_5Rnd_86x70_L115A1",5];
		
		hint "L115A1  purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase CZ 550 $4000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 4000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_srifle_CZ550",1];
		_box addItemCargoGlobal ["CUP_5x_22_LR_17_HMR_M",5];
		
		hint "CZ 550 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase CZ 750 S1 M1 $4500",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 4500] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_srifle_CZ750",1];
		_box addItemCargoGlobal ["CUP_10Rnd_762x51_CZ750",5];
		
		hint "CZ 750 S1 M1 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M14 DMR $5500",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 5500] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_srifle_DMR",1];
		_box addItemCargoGlobal ["CUP_20Rnd_762x51_DMR",5];
		
		hint "M14 DMR purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M24 $5000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 5000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_srifle_M24_des",1];
		_box addItemCargoGlobal ["CUP_5Rnd_762x51_M24",5];
		
		hint "M24 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M40A3 $5500",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 5500] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_srifle_M40A3",1];
		_box addItemCargoGlobal ["CUP_5Rnd_762x51_M24",5];
		
		hint "M40A3 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M110 $7000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 7000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_srifle_M110",1];
		_box addItemCargoGlobal ["CUP_20Rnd_762x51_B_M110",5];
		
		hint "M110 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Dragunov SVD $6500",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 6500] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_SVD_des_EP1",1];
		_box addItemCargoGlobal ["CUP_10Rnd_762x54_SVD_M",5];
		
		hint "Dragunov SVD purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase VSS Vintorez $7000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 7000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_srifle_VSSVintorez",1];
		_box addItemCargoGlobal ["CUP_20Rnd_9x39_SP5_VSS_M",4];
		
		hint "VSS Vintorez purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Lee Enfield $5000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 5000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_srifle_LeeEnfield",1];
		_box addItemCargoGlobal ["CUP_10x_303_M",5];
		
		hint "Lee Enfield purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase AS50 $15000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 15000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_srifle_AS50",1];
		_box addItemCargoGlobal ["CUP_5Rnd_127x99_as50_M",6];
		
		hint "AS50 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase KSVK $15000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 15000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_srifle_ksvk",1];
		_box addItemCargoGlobal ["CUP_5Rnd_127x108_KSVK_M",6];
		
		hint "KSVK purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M107 $16000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 16000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_srifle_M107_Base",1];
		_box addItemCargoGlobal ["CUP_10Rnd_127x99_m107",5];
		
		hint "M107 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];