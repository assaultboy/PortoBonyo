private ["_vicList"];

_vicList = [];

_vicList pushback "B_G_Offroad_01_armed_F";
_vicList pushback "C_SUV_01_F";
_vicList pushback "B_G_Van_01_transport_F";
_vicList pushback "DAR_M1151";

_vic = (_vicList call BIS_fnc_selectRandom) createVehicle _spawnPoint;