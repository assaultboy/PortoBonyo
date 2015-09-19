/*
	BONYO_fnc_setupBuy
	
	DESCRIPTION:
		This function adds the various addactions for the buying stand to the given object, Fortunately S.Aberhart has done a fucking wonderful job of adding in a tonne of crap
		
	PARAMETERS:
		Object
			The object to add actions to
			
	RETURNS
		nothing
		
	EXAMPLE
		 _object call BONYO_fnc_setupBuy
*/

private ["_object"];

_object = _this;

if (isNil "_object") then {
	["The given argument is nil"] call BIS_fnc_error;
};

_object enableSimulation false;
_object allowDamage false;

_object addAction ["<t color='#FF0000'>--Ground------------------------------</t>", "", nil, 6, false, true];

_object addAction ["Buy Quadbike $1000", {["B_Quadbike_01_F",1000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy HEMTT $3,000", {["B_Truck_01_box_F",3000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy JAKAL HMG $5,000", {["UK3CB_BAF_Jakal2_L2A1_D",5000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy JAKAL GMG $6,000", {["UK3CB_BAF_Jakal2_GMG_D",6000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy HMMWV TOW $7,000", {["DAR_M1167",7000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy COYOTE HMG $8,000", {["UK3CB_BAF_Coyote_passenger_L111A1_D",8000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy COYOTE GMG $10,000", {["UK3CB_BAF_Coyote_passenger_L134A1_D",10000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy Static HMG $500", {["B_HMG_01_high_F", 500] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Static GMG $1000", {["B_GMG_01_high_F", 1000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy HMG Autonomous Bag $4000", {["B_HMG_01_A_weapon_F", 4000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy GMG Autonomous Bag $4000", {["B_GMG_01_A_weapon_F", 4000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Folded Tripod Bag $1000", {["B_HMG_01_support_F", 1000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Static MK6 Mortar $2000", {["B_Mortar_01_F", 2000] call BONYO_fnc_buyFort}, nil, 6, false, true];

_object addAction ["<t color='#FF0000'>--Fortifications------------------------------</t>", "", nil, 6, false, true];

_object addAction ["Buy Sandbag Wall $25", {["Land_BagFence_Long_F", 25] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Sandbag Wall (Round) $30", {["Land_BagFence_Round_F", 30] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Sandbag Wall (Corner) $15", {["Land_BagFence_Corner_F", 15] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Sandbag Wall (Tiny) $10", {["Land_BagFence_End_F", 10] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy H-Barrier $50", {["Land_HBarrier_3_F", 50] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy H-Barrier (Single) $20", {["Land_HBarrier_1_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Ramp $5", {["Land_Obstacle_Ramp_F", 5] call BONYO_fnc_buyFort}, nil, 6, false, true];

_object addAction ["<t color='#FF0000'>--Lights------------------------------</t>", "", nil, 6, false, true];

_object addAction ["Buy Street Lights $20", {["Land_LampDecor_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Light Tower (Tall) $50", {["LandLampHalogen_F", 50] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Airport Lights (Stupidly Tall) $100", {["Land_LampAirport_F", 100] call BONYO_fnc_buyFort}, nil, 6, false, true];

_object addAction ["<t color='#FF0000'>--Bunkers---------------------------</t>", "", nil, 6, false, true];

_object addAction ["Buy Small Guard Post $10", {["Land_GuardShed", 10] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Small Bunker $100", {["Land_BagBunker_Small_F", 100] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Large Bunker $500", {["Land_BagBunker_Large_F", 500] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Tower Bunker $1000", {["Land_BagBunker_Tower_F", 1000] call BONYO_fnc_buyFort}, nil, 6, false, true];

_object addAction ["<t color='#FF0000'>--Aircraft---------------------------</t>", "", nil, 6, false, true];

_object addAction ["Buy UAV Darter Pack $1000", {["B_UAV_01_backpack_F", 1000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy UAV Terminal $100", {["Item_B_UavTerminal", 100] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy Civillian Helo $25,000", {["C_Heli_Light_01_civil_F",25000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy Humming Bird $50,000", {["B_Heli_Light_01_F",50000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy Ghost Hawk $75,000", {["B_Heli_Transport_01_camo_F",75000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy Pawnee $100,000", {["B_Heli_Light_01_armed_F",100000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy A Fucking Commanche $500,000", {["B_Heli_Attack_01_F",500000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];

_object addAction ["<t color='#FF0000'>--Ammo/Weapons/Boxes------------------------------</t>", "", nil, 6, false, true];
_object addAction ["Buy Basic Weapons (NATO) $10000", {["Box_NATO_Wps_F", 10000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Basic Weapons (US Army) $10000", {["CUP_USBasicWeapons_EP1", 10000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Basic Weapons (USMC) $10000", {["CUP_USBasicWeaponsBox", 10000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Basic Launchers (NATO) $15000", {["Box_NATO_WpsLaunch_F", 15000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Special Weapons (NATO) $20000", {["Box_NATO_WpsSpecial_F", 20000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Special Weapons (US Army) $20000", {["CUP_USSpecialWeapons_EP1", 20000] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Special Weapons (USMC) $20000", {["CUP_USSpecialWeaponsBox", 20000] call BONYO_fnc_buyFort}, nil, 6, false, true];
