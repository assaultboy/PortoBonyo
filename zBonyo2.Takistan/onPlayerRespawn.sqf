//Force the player to have the correct loadout

player call BONYO_fnc_setPlayerGear;

{
	_x addCuratorEditableObjects [units group player, true];
} forEach allCurators;
