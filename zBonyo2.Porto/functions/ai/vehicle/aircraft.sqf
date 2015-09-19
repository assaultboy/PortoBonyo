private ["_airList"];

_airList = [];

_airList pushback "O_Heli_Light_02_F";
_airList pushback "I_Heli_light_03_F";
_airList pushback "MU_AAF_pawnee";

_air = (_airList call BIS_fnc_selectRandom) createVehicle _spawnPoint;