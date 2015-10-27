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
		
		
		_unit forceaddUniform "MNP_CombatUniform_USMC_arctic";
		_unit addHeadgear "rhs_6b26_bala";
		_unit addVest "rhs_6b23_rifleman";
		_unit addBackpack "rhs_assault_umbts";


// Add weapons & grenades

		_unit addMagazines ["hlc_20rnd_762x51_b_G3", 10];
		_unit addWeapon "hlc_rifle_g3sg1";
		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["SmokeShell", 2];
		_unit addMagazines ["SmokeShellGreen", 2];
		_unit addMagazines ["rhs_mag_m18_purple", 2];
		_unit addItemToBackpack "rhsusf_m112_mag";
		_unit addItemToBackpack "rhsusf_m112_mag";
		_unit addItemToBackpack "rhsusf_m112_mag";
		_unit addItemToBackpack "rhsusf_m112_mag";
		_unit addItemToBackpack "rhsusf_m112_mag";
		_unit addItemToBackpack "rhsusf_m112_mag";

// Add items  

		_unit additem "ACE_NVG_Gen4";
		_unit addItem "ItemCompass";  
		_unit assignItem "ItemCompass";  
		_unit addItem "ItemMap";  
		_unit assignItem "ItemMap";  		
		_unit addItem "ItemWatch";  
		_unit assignItem "ItemWatch";  		
		_unit addItem "ItemGPS"; 
		_unit assignItem "ItemGPS";
_unit additem "ACE_EarPlugs";
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