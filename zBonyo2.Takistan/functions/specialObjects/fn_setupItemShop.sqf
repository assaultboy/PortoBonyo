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

//Created a spacer with the same format as the rest, Feel free to fix this up.
_object addAction ["<t color='#FF0000'>--Shotguns------------------------------</t>",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 1] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["",0];
		
		hint "You're an idiot...";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase M1014 $2000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 2000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_sgun_M1014",1];
		_box addItemCargoGlobal ["CUP_8Rnd_B_Beneli_74Slug",2];
		_box addItemCargoGlobal ["CUP_8Rnd_B_Beneli_74Pellets",4];
		
		hint "M1014 purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase Saiga12K $4000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 4000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_sgun_Saiga12K",1];
		_box addItemCargoGlobal ["CUP_8Rnd_B_Saiga12_74Slug_M",2];
		_box addItemCargoGlobal ["CUP_8Rnd_B_Saiga12_74Pellets_M",4];
		
		hint "Saiga12K purchased";
	} else {
		hint "You do not have enough for that";
	};
}];

_object addAction ["Purchase AA-12 $6000",{
	private ["_box"];
	
	_box = (_this select 0);
	
	if([player, 6000] call BONYO_fnc_purchase) then {
		_box addItemCargoGlobal ["CUP_sgun_AA12",1];
		_box addItemCargoGlobal ["CUP_20Rnd_B_AA12_Pellets",4];
		_box addItemCargoGlobal ["CUP_20Rnd_B_AA12_74Slug",1];
		_box addItemCargoGlobal ["CUP_20Rnd_B_AA12_HE",1];
		
		hint "AA-12 purchased";
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