/*
	BONYO_fnc_prepareSpecialObjects
	
	DESCRIPTION:
		This function adds the actions and loops to all special objects in Bonyo
		This function should never be called explicitly as it is called postInit by description.ext
		
	PARAMETERS:
		nothing
			
	RETURNS
		nothing
		
	EXAMPLE
		call BONYO_fnc_prepareSpecialObjects
*/

BONYO_obj_atm call BONYO_fnc_setupATM;

BONYO_obj_locker call BONYO_fnc_setupLocker;

BONYO_obj_sellArea call BONYO_fnc_setupSellArea;

BONYO_obj_starter call BONYO_fnc_setupStarter;

BONYO_veh_buy call BONYO_fnc_setupBuy;

BONYO_obj_buy call BONYO_fnc_setupBuy2;

BONYO_sup_buy call BONYO_fnc_setupBuy3;

BONYO_obj_vehicleStation call BONYO_fnc_setupVehicleStation;

BONYO_obj_itemShop call BONYO_fnc_setupItemShop;