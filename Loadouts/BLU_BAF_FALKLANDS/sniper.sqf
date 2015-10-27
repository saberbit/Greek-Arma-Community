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
		_unit addUniform "MNP_CombatUniform_DDPMR";
		_unit addHeadgear "rhsusf_ach_helmet_camo_ocp";
		_unit addVest "V_PlateCarrierL_CTRG";
		_unit addBackpack "CUP_B_USPack_Coyote";



// Add weapons & grenades

		_unit addMagazines ["CUP_5Rnd_86x70_L115A1", 10];
		_unit addWeapon "CUP_srifle_AWM_des";
		_unit addPrimaryWeaponItem "RH_m3lr";
		_unit addWeapon "CUP_Vector21Nite";
		_unit addMagazines "RH_15Rnd_9x19_SIG";
		_unit addWeapon "RH_p226";
		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["SmokeShell", 2];
		_unit addMagazines ["SmokeShellGreen", 2];
		_unit addMagazines ["rhs_mag_m18_purple", 2];
		

// Add items  

		_unit addItem "ItemCompass";  
		_unit assignItem "ItemCompass";  
		_unit addItem "ItemMap";  
		_unit assignItem "ItemMap";  		
		_unit addItem "ItemWatch";  
		_unit assignItem "ItemWatch";  		
		_unit addItem "ItemGPS"; 
		_unit assignItem "ItemGPS";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_morphine";
		_unit addItem "ACE_morphine";
		_unit addItem "ACE_epinephrine"; 
		_unit additem  "ACE_EarPlugs";

	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);