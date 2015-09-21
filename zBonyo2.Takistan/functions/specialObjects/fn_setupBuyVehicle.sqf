/*
	BONYO_fnc_setupBuy
	
	DESCRIPTION:
		This function adds the various addactions for buying vehicles
		
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
_object addAction ["Buy JAKAL HMG $5,000", {["UK3CB_BAF_Jackal2_L2A1_D",5000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy JAKAL GMG $6,000", {["UK3CB_BAF_Jackal2_GMG_D",6000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy HMMWV TOW $7,000", {["DAR_M1167",7000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy COYOTE HMG $8,000", {["UK3CB_BAF_Coyote_passenger_L111A1_D",8000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy COYOTE GMG $10,000", {["UK3CB_BAF_Coyote_passenger_L134A1_D",10000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy Static MK6 Mortar $2000", {["B_Mortar_01_F", 2000] call BONYO_fnc_buyFort}, nil, 6, false, true];

_object addAction ["<t color='#FF0000'>--Aircraft---------------------------</t>", "", nil, 6, false, true];

_object addAction ["Buy Civilian Helo $25,000", {["C_Heli_Light_01_civil_F",25000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy Humming Bird $50,000", {["B_Heli_Light_01_F",50000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy Ghost Hawk $75,000", {["B_Heli_Transport_01_camo_F",75000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy Pawnee $100,000", {["B_Heli_Light_01_armed_F",100000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];
_object addAction ["Buy A Fucking Commanche $500,000", {["B_Heli_Attack_01_F",500000] call BONYO_fnc_buyVehicle}, nil, 6, false, true];


//Disabled for now
//_object addAction ["<t color='#FF0000'>--UAV Drone-EXPERIMENTAL--------------------------</t>", "", nil, 6, false, true];

//_object addAction ["Buy UAV MQ-10 Reaper $10000", {["B_UAV_02_F", 10000] call BONYO_fnc_buyUav}, nil, 6, false, true];