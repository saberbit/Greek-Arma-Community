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
		_unit forceaddUniform "MNP_CombatUniform_US6co_B";
		_unit addHeadgear "MNP_Helmet_PAGST_US6co";
		_unit addVest "V_SPC_GL";
		_unit addBackpack "rhs_rpg_empty";

// Add weapons & grenades

		_unit addMagazines ["CUP_PG7VR_M", 1];
		_unit addweapon "CUP_launch_RPG7V";
		_unit addMagazines ["CUP_PG7VR_M", 1];
		_unit addMagazines ["CUP_PG7VR_M", 1];
		_unit addMagazines ["hlc_20rnd_762x51_Mk316_G3", 10];
		_unit addWeapon "hlc_rifle_g3a3";
		_unit addMagazines ["rhs_mag_m67", 2];
		_unit addMagazines ["rhs_mag_an_m8hc", 2];
		_unit addMagazines ["rhs_mag_m18_green", 2];
		_unit addMagazines ["rhs_mag_m18_red", 2];
		_unit addMagazines ["ACE_HandFlare_White",5];
		
// Add items  

		_unit addItem "ItemCompass";  
		_unit assignItem "ItemCompass";  
		_unit addItem "ItemMap";  
		_unit assignItem "ItemMap";  		
		_unit addItem "ItemWatch";  
		_unit assignItem "ItemWatch";  		
		_unit addItem "ItemGPS"; 
		_unit assignItem "ItemGPS";
		_unit additem  "ACE_EarPlugs";
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