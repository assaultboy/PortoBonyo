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