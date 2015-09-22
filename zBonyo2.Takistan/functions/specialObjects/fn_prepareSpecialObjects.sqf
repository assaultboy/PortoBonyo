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

BONYO_obj_buyVehicle call BONYO_fnc_setupBuyVehicle;

BONYO_obj_buyFort call BONYO_fnc_setupBuyFort;

BONYO_obj_buySupply call BONYO_fnc_setupBuySupply;

BONYO_obj_vehicleStation call BONYO_fnc_setupVehicleStation;

BONYO_obj_itemShop call BONYO_fnc_setupItemShop;

BONYO_obj_ArifleShop call BONYO_fnc_setupArifleShop;

BONYO_obj_LauncherShop call BONYO_fnc_setupLauncherShop;

BONYO_obj_MGShop call BONYO_fnc_setupMGShop;

BONYO_obj_SgunShop call BONYO_fnc_setupSgunShop;

BONYO_obj_SrifleShop call BONYO_fnc_setupSrifleShop;