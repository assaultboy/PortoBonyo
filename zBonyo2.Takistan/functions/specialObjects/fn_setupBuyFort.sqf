/*
	BONYO_fnc_setupBuy2
	
	DESCRIPTION:
		This function adds the various addactions for fortifications
		
	PARAMETERS:
		Object
			The object to add actions to
			
	RETURNS
		nothing
		
	EXAMPLE
		 _object call BONYO_fnc_setupBuy2
*/

private ["_object"];

_object = _this;

if (isNil "_object") then {
	["The given argument is nil"] call BIS_fnc_error;
};

_object enableSimulation false;
_object allowDamage false;

_object addAction ["<t color='#FF0000'>--Fortifications------------------------------</t>", "", nil, 6, false, true];

_object addAction ["Buy Sandbag Wall $25", {["Land_BagFence_Long_F", 25] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Sandbag Wall (Round) $30", {["Land_BagFence_Round_F", 30] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Sandbag Wall (Corner) $15", {["Land_BagFence_Corner_F", 15] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Sandbag Wall (Tiny) $10", {["Land_BagFence_End_F", 10] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy H-Barrier $50", {["Land_HBarrier_3_F", 50] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy H-Barrier (Single) $20", {["Land_HBarrier_1_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Ramp $5", {["Land_Obstacle_Ramp_F", 5] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Ladder $20", {["Land_ladder_half", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];

_object addAction ["<t color='#FF0000'>--Lights------------------------------</t>", "", nil, 6, false, true];

_object addAction ["Buy Street Lights $20", {["Land_LampDecor_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Light Tower (Tall) $50", {["LandLampHalogen_F", 50] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Airport Lights (Stupidly Tall) $100", {["Land_LampAirport_F", 100] call BONYO_fnc_buyFort}, nil, 6, false, true];

_object addAction ["<t color='#FF0000'>--Bunkers---------------------------</t>", "", nil, 6, false, true];

_object addAction ["Buy Small Guard Post $10", {["Land_GuardShed", 10] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Small Bunker $100", {["Land_BagBunker_Small_F", 100] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Large Bunker $500", {["Land_BagBunker_Large_F", 500] call BONYO_fnc_buyFort}, nil, 6, false, true];
_object addAction ["Buy Tower Bunker $1000", {["Land_BagBunker_Tower_F", 1000] call BONYO_fnc_buyFort}, nil, 6, false, true];