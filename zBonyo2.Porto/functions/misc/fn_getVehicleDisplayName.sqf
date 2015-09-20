/*
	BONOY_fnc_getVehicleDisplayName
	
	DESCRIPTION:
		This function returns the display name of the given vehicle
		
	PARAMETERS:
		Object
			Object to get display name of
			
	RETURNS
		String
			Display name
		
	EXAMPLE
		 _object call BONOY_fnc_getVehicleDisplayName
*/


private["_cfg", "_class" ,"_name"];

_class = typeOf _this;

_cfg  = (configFile >>  "CfgVehicles" >>  _class);
	
if (isText(_cfg >> "displayName")) then {
	_name = getText(_cfg >> "displayName")
} else {
	_name = "UNDEFINED";
};

_name;