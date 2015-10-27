_unit = _this select 0;
_strLoadout = _this select 1;

if (!local _unit) exitWith {};

removeAllWeapons _unit;
removebackpack _unit;
removeGoggles _unit;
removeHeadgear _unit;
removeAllAssignedItems_unit;

switch (_strLoadout) do
{
	case "rifleman":
	{

// Add clothing
				
		_unit forceaddUniform "MNP_CombatUniform_ASA_GC_B";
		_unit addHeadgear "LOP_H_Shemag_BLK";
		_unit addVest "V_BandollierB_oli";
		_unit addBackpack "rhs_rpg_empty";

// Add weapons & grenades
		
		_unit addMagazines ["rhs_30Rnd_762x39mm", 10];
		_unit addMagazines ["rhs_rpg7_PG7VL_mag", 4];
		_unit addWeapon "rhs_weap_akm";	
		_unit addWeapon "rhs_weap_rpg7";
		_unit addMagazines ["rhs_mag_rgd5", 2];

// Add items  

		_unit addItem "ItemCompass";  
		_unit assignItem "ItemCompass";  
		_unit addItem "ItemMap";  
		_unit assignItem "ItemMap";  		
		_unit addItem "ItemWatch";  
		_unit assignItem "ItemWatch";  		 
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_EarPlugs";
	};
};

_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);