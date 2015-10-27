_unit = _this select 0;
_strLoadout = _this select 1;

if (!local _unit) exitWith {};

removeAllWeapons _unit;
removeAllAssignedItems  _unit;
removebackpack _unit;
removeGoggles _unit;
removeHeadgear _unit;

switch (_strLoadout) do
{
	case "rifleman":
	{
// Add clothing
		_unit addUniform "rhs_uniform_FROG01_wd";
		_unit addHeadgear "rhsusf_mich_helmet_marpatwd_norotos_arc_headset";
		_unit addVest "rhsusf_iotv_ocp_Grenadier";
		_unit addBackpack "tf_rt1523g_sage";

// Add weapons & grenades
		_unit addMagazines ["hlc_30rnd_556x45_EPR", 6];
		_unit addMagazines ["30Rnd_556x45_Stanag_Tracer_Red",4];
		_unit addWeapon "hlc_rifle_M4";							
		_unit addPrimaryWeaponItem "hlc_muzzle_556NATO_KAC";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
		_unit addPrimaryWeaponitem "RH_eothhs1";

		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["rhs_mag_m18_green", 2];
		_unit addMagazines ["rhs_mag_mk84", 2];
		_unit addMagazines ["rhs_mag_m18_purple", 2];
		_unit addMagazines ["B_IR_Grenade", 2];

// Add items  
		_unit assignItem "rhsusf_ANPVS_14";
		_unit addItem "tf_anprc152_2";  
		_unit assignItem "tf_anprc152_2";  
		_unit addItem "ItemCompass";  
		_unit assignItem "ItemCompass";  
		_unit addItem "ItemMap";  
		_unit assignItem "ItemMap";  		
		_unit addItem "ItemWatch";  
		_unit assignItem "ItemWatch";  		
		_unit addItem "ItemGPS"; 
		_unit assignItem "ItemGPS"; 
		_unit addItem "AGM_Bandage";
		_unit addItem "AGM_Bandage";
		_unit addItem "AGM_Bandage";
		_unit addItem "AGM_Bandage";
		_unit addItem "AGM_Bandage";
		_unit addItem "AGM_Bandage";
		_unit addItem "AGM_Morphine";
		_unit addItem "AGM_Morphine";
		_unit addItem "AGM_Morphine";
		_unit addItem "AGM_Epipen";
		_unit addItem "AGM_Bloodbag";
		_unit addItem "AGM_EarBuds";
		_unit addItem "AGM_IR_Strobe_Item";
	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);