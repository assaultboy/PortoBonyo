private ["_boaList"];

_boaList = [];

_boaList pushback "O_Boat_Armed_01_hmg_F";
_boaList pushback "I_Boat_Armed_01_minigun_F";

_boa = (_boaList call BIS_fnc_selectRandom) createVehicle _spawnPoint;