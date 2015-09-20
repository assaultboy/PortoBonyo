class CfgFunctions
{
	class BONYO
	{
		class gear
		{
			class setPlayerGear {};
			class loadLocker {};
			class saveLocker {};
		};
		
		class misc
		{
			class print {};
			class save {};
			class load {};
			class collision {};
			class randomPosition {}; 
			class getVehicleDisplayName {}; //This is some black magic voodoo, avert your eyes
		};
		
		class money
		{
			class sellPile {};
			class withdraw {};
			class deposit {};
			class giveMoney {};
			class purchase {};
			class checkBalance {};
			class setMoney {};
		};
		
		class specialObjects
		{
			class prepareSpecialObjects {};
			class setupATM {};
			class setupLocker {};
			class setupSellArea {};
			class setupStarter {};
			class setupBuy {};
			class setupVehicleStation {};
			class setupItemShop {};
		};
		
		class ai
		{
			class spawnInfGroup {};
			class spawnVicGroup {};
			class spawnAirGroup {};
			class spawnWave {};
			class setWave {};
			
			//Away missions Stuff
			class spawnAwayMission {};
			class createCustomAwayMission {};
		};
		
		class objects
		{
			class buyVehicle {};
			class buyFort {};
			class makeMoveable {};
		};
	};
};