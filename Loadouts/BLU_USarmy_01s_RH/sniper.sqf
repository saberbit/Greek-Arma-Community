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
		
		

		_unit forceaddUniform "MNP_CombatUniform_US3Co";
		_unit addHeadgear "MNP_Boonie_3CO";
		_unit addVest "V_IBA_RFL";
		_unit addWeapon "Rangefinder";


// Add weapons & grenades
		_unit addMagazines ["CUP_5Rnd_762x51_M24", 10];
		_unit addWeapon "CUP_srifle_M24_wdl";
		_unit addPrimaryWeaponItem "CUP_optic_LeupoldMk4_10x40_LRT_Woodland";
		_unit addMagazines ["RH_15Rnd_9x19_M9", 3];
		_unit addweapon "RH_m9";
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
		_unit addItemToVest "ACE_DAGR";
		_unit addItemToVest "ACE_Kestrel4500";
		_unit addItemToVest "ACE_RangeCard";
		_unit addItemToVest "ACE_ATragMX";
	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);