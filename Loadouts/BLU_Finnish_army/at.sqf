_unit = _this select 0;
_strLoadout = _this select 1;

if (!local _unit) exitWith {};

removeAllWeapons _unit;
removebackpack _unit;
removeGoggles _unit;
removeHeadgear _unit;




switch (_strLoadout) do
{
	case "rifleman":
	{

// Add clothing
		
		_unit forceaddUniform "MNP_CombatUniform_Finarctic_B";
		_unit addHeadgear "MNP_Helmet_FIN_A";
		_unit addVest "MNP_Vest_FIN_2";
		_unit addBackpack "MNP_B_RUW_FP";
		
		_unit addweapon "launch_NLAW_F";
		_unit addMagazines ["CUP_30Rnd_TE1_Red_Tracer_556x45_G36", 10];
		_unit addWeapon "CUP_arifle_G36A";
		_unit addMagazines ["rhsusf_mag_17Rnd_9x19_JHP", 3];
		_unit addWeapon "rhsusf_weap_glock17g4";
		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["SmokeShell", 2];
		_unit addMagazines ["SmokeShellGreen", 2];
		_unit addMagazines ["rhs_mag_m18_purple", 2];
//		_unit addItemToBackpack "ACE_Clacker";
//		_unit addItemToBackpack "DemoCharge_Remote_Mag";
		

// Add items  
_unit addItem "ACE_EarPlugs";
		_unit addItem "ItemCompass";  
		_unit assignItem "ItemCompass";  
		_unit addItem "ItemMap";  
		_unit assignItem "ItemMap";  		
		_unit addItem "ItemWatch";  
		_unit assignItem "ItemWatch";  		
		_unit addItem "ItemGPS"; 
		_unit assignItem "ItemGPS";
		_unit linkItem "rhsusf_ANPVS_15";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_morphine";
		_unit addItem "ACE_morphine";
		_unit addItem "ACE_epinephrine"; 

	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);