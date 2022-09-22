function init_globals(){
	globalvar StackSpeed;		StackSpeed = 0.08;
	globalvar StackOffset;		StackOffset = 0.02;
	globalvar PlayerScale;		PlayerScale = 2;
	globalvar ControlScheme;	ControlScheme = scheme.mouse
	globalvar NextLevel;		NextLevel = 0;
	
	
	/* SHOP AFFECTED VARIABLES */
	globalvar upg_HP;			upg_HP		= ds_list_create();
	globalvar upg_Spec;			upg_Spec	= ds_list_create();
	globalvar upg_Rate;			upg_Rate	= ds_list_create();
	globalvar upg_IFram;		upg_IFram	= ds_list_create();
	globalvar purchaseList;		purchaseList = ds_list_create();
	globalvar purchasePrice;	purchasePrice = ds_list_create();
	
	
	ds_list_add(upg_HP, 10, 20, 30, 40, 75);
	ds_list_add(upg_Spec, 1, 2, 3, 4, 5);
	ds_list_add(upg_Rate, 10, 9, 7, 4, 2);
	ds_list_add(upg_IFram, 30, 45, 60, 90, 150);
	ds_list_add(purchaseList, 0, 0, 0, 0);
	ds_list_add(purchasePrice, 500, 750, 1000, 1250);
	
	globalvar PlayerMAXHP;		PlayerMAXHP			= upg_HP[| purchaseList[| 0]];
	globalvar PlayerMAXSpecial;	PlayerMAXSpecial	= upg_Spec[| purchaseList[| 2]];
	globalvar PlayerSpecial;	PlayerSpecial		= PlayerMAXSpecial
	globalvar FireRate;			FireRate			= upg_Rate[| purchaseList[| 1]];
	globalvar IFrameDur;		IFrameDur			= upg_IFram[| purchaseList[| 3]];
	
	
	globalvar PlayerHP;			PlayerHP = PlayerMAXHP;
	globalvar PlayerTotalScore;	PlayerTotalScore = 0;
	globalvar PlayerPoints;		PlayerPoints = 0;
	globalvar PlayerKills;		PlayerKills = 0;
	globalvar PlayerMoney;		PlayerMoney = 0;
	globalvar CurrentLevel;		CurrentLevel = "";
	globalvar CurrentRoom;		CurrentRoom = 0;
	
	globalvar EnList;			EnList = ds_list_create();
								ds_list_add(EnList, Enemy01, Enemy02);
	globalvar FloorSpeed;		FloorSpeed = 34;
	globalvar DebugMode;		DebugMode = false;
	
	globalvar LevelEnd;			LevelEnd = false;
	globalvar InLevel;			InLevel = false;
	globalvar bossMAXHealth;	bossMAXHealth = 350;
};
function init_globals_newgame(){
	PlayerHP = 5;
	PlayerMAXHP = 5;
	PlayerSpecial = 0;
};