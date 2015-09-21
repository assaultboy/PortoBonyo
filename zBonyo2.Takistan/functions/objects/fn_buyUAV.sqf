/*
	BONYO_fnc_buyVehicle
	
	DESCRIPTION:
		This function is a copy of "buyVehicle" but designed for UAV's to be spawned at the closest airfield
		
	PARAMETERS:
		UAV
			The classname of the UAV to be bought
		Cost
			The amount that the UAV costs
			
	RETURNS
		nothing
		
	EXAMPLE
		 ["B_UAV_02_F", 1000] call BONYO_fnc_buyUav
*/

private ["_class","_cost"];

if (isNil "_this") then {
	["The given argument is nil"] call BIS_fnc_error;
};

_class = (_this select 0);
_cost = (_this select 1);

if (isNil "_class" || isNil "_cost") then {
	[format ["A given parameter is nil: %1",_this]] call BIS_fnc_error;
};


if ([player, _cost] call BONYO_fnc_purchase) then {
	//Crete the UAV on the sever to prevent locality problems
	[0, {
		private ["_class","_vehicle"];
		
		_class = _this;

		_vehicle = _class createVehicle getMarkerPos "uavDeliveryArea";
		
	}, _class] call CBA_fnc_globalExecute;
	
	hint "UAV Purchased";
} else {
	hint "You do not have enough for this";
};