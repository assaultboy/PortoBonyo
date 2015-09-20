private ["_pos","_i","_box"];


"awayMission" setMarkerText "Ammo Cache";

[-1, {
	["AwayMission",["Ammo Cache"]] call BIS_fnc_showNotification;
}] call CBA_fnc_globalExecute;

_pos = _this;

//Spawn a few groups
for [{_i=0}, {_i<count (call CBA_fnc_players)}, {_i=_i+1}] do {
	private ["_grp","_newPos"];
	
	_newPos = [(_pos select 0) + ((random 200) - 100), (_pos select 1) + ((random 200) - 100), 0];
	
	_grp = _newPos call BONYO_fnc_spawnInfGroup;
	
	[_grp, _pos, (random 240) + 10] call BIS_fnc_taskPatrol;
	
	{
		BONYO_var_awayList pushBack _x;
	} forEach units _grp;
};

_box = ("B_CargoNet_01_ammo_F" createVehicle _pos);

BONYO_var_awayList pushBack _box;

clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

//Add random mags
_box addMagazineCargoGlobal ["30Rnd_556x45_Stanag", round random 50];
_box addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", round random 50];
_box addMagazineCargoGlobal ["20Rnd_762x51_Mag", round random 50];
_box addMagazineCargoGlobal ["7Rnd_408_Mag", round random 50];
_box addMagazineCargoGlobal ["5Rnd_127x108_Mag", round random 50];
_box addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag", round random 50];
_box addMagazineCargoGlobal ["30Rnd_9x21_Mag", round random 50];
_box addMagazineCargoGlobal ["16Rnd_9x21_Mag", round random 50];
_box addMagazineCargoGlobal ["30Rnd_45ACP_Mag_SMG_01", round random 50];
_box addMagazineCargoGlobal ["9Rnd_45ACP_Mag", round random 50];
_box addMagazineCargoGlobal ["150Rnd_762x54_Box", round random 50];
_box addMagazineCargoGlobal ["6Rnd_45ACP_Cylinder", round random 50];
_box addMagazineCargoGlobal ["10Rnd_762x54_Mag", round random 50];
_box addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag", round random 50];
_box addMagazineCargoGlobal ["CUP_10Rnd_762x51_CZ750", round random 50];
_box addMagazineCargoGlobal ["CUP_30Rnd_556x45_G36", round random 50];
_box addMagazineCargoGlobal ["CUP_100Rnd_556x45_BetaCMag", round random 50];
_box addMagazineCargoGlobal ["CUP_20Rnd_762x51_CZ805B", round random 50];
_box addMagazineCargoGlobal ["CUP_20Rnd_TE1_Red_Tracer_762x51_CZ805B", round random 50];
_box addMagazineCargoGlobal ["CUP_20Rnd_762x51_FNFAL_M", round random 50];
_box addMagazineCargoGlobal ["CUP_5x_22_LR_17_HMR_M", round random 50];
_box addMagazineCargoGlobal ["CUP_20Rnd_762x51_FNFAL_M", round random 50];
_box addMagazineCargoGlobal ["CUP_5x_22_LR_17_HMR_M", round random 50];
_box addMagazineCargoGlobal ["CUP_5Rnd_127x108_KSVK_M", round random 50];
_box addMagazineCargoGlobal ["CUP_10x_303_M", round random 50];
_box addMagazineCargoGlobal ["CUP_8Rnd_B_Beneli_74Slug", round random 50];
_box addMagazineCargoGlobal ["CUP_8Rnd_B_Beneli_74Pellets", round random 50];
_box addMagazineCargoGlobal ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", round random 50];
_box addMagazineCargoGlobal ["CUP_10Rnd_762x54_SVD_M", round random 50];
_box addMagazineCargoGlobal ["CUP_20Rnd_B_AA12_Pellets", round random 50];
_box addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", round random 50];
_box addMagazineCargoGlobal ["CUP_10Rnd_127x99_M107", round random 50];
_box addMagazineCargoGlobal ["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", round random 50];
_box addMagazineCargoGlobal ["CUP_20Rnd_B_AA12_74Slug", round random 50];
_box addMagazineCargoGlobal ["CUP_64Rnd_9x19_Bizon_M", round random 50];
_box addMagazineCargoGlobal ["CUP_20Rnd_TE1_Red_Tracer_762x51_M110", round random 50];
_box addMagazineCargoGlobal ["CUP_30Rnd_9x19_MP5", round random 50];
_box addMagazineCargoGlobal ["CUP_30Rnd_Sa58_M_TracerG", round random 50];
_box addMagazineCargoGlobal ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M", round random 50];
_box addMagazineCargoGlobal ["CUP_20Rnd_762x51_B_M110", round random 50];
_box addMagazineCargoGlobal ["CUP_5Rnd_762x51_M24", round random 50];
_box addMagazineCargoGlobal ["CUP_1Rnd_HE_GP25_M", round random 50];
_box addMagazineCargoGlobal ["CUP_1Rnd_SMOKE_GP25_M", round random 50];
_box addMagazineCargoGlobal ["CUP_64Rnd_Red_Tracer_9x19_Bizon_M", round random 50];
_box addMagazineCargoGlobal ["CUP_8Rnd_B_Saiga12_74Slug_M", round random 50];
_box addMagazineCargoGlobal ["CUP_30Rnd_Sa58_M", round random 50];
_box addMagazineCargoGlobal ["CUP_8Rnd_B_Saiga12_74Pellets_M", round random 50];
_box addMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249", round random 50];
_box addMagazineCargoGlobal ["CUP_20Rnd_9x39_SP5_VSS_M", round random 50];
_box addMagazineCargoGlobal ["CUP_30Rnd_762x39_AK47_M", round random 50];
_box addMagazineCargoGlobal ["CUP_30Rnd_545x39_AK_M", round random 50];
_box addMagazineCargoGlobal ["CUP_IlumFlareWhite_GP25_M", round random 50];
_box addMagazineCargoGlobal ["CUP_20Rnd_762x51_B_SCAR", round random 50];
_box addMagazineCargoGlobal ["CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR", round random 50];
_box addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", round random 50];
_box addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", round random 50];
_box addMagazineCargoGlobal ["CUP_50Rnd_UK59_762x54R_Tracer", round random 50];
_box addMagazineCargoGlobal ["10Rnd_762x54_Mag", round random 50];
_box addMagazineCargoGlobal ["10Rnd_338_Mag", round random 50];
_box addMagazineCargoGlobal ["10Rnd_127x54_Mag", round random 50];
_box addMagazineCargoGlobal ["10Rnd_93x64_DMR_05_Mag", round random 50];

//Add HuntIR Crap

_box addMagazineCargoGlobal ["ACE_HuntIR_monitor", round random 2];
_box addMagazineCargoGlobal ["ACE_HuntIR_M203", round random 2];
_box addMagazineCargoGlobal ["ACE_HuntIR_Box", round random 2];

//Add random GL
_box addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["3Rnd_HE_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["3Rnd_Smoke_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["3Rnd_SmokeRed_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["3Rnd_SmokeGreen_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["3Rnd_SmokeYellow_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["3Rnd_SmokePurple_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["3Rnd_SmokeBlue_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell", round random 25];
_box addMagazineCargoGlobal ["3Rnd_SmokeOrange_Grenade_shell", round random 25];