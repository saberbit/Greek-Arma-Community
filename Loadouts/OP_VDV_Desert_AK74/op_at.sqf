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
		
		
		_unit forceaddUniform "MNP_CombatUniform_RU_Med_DB";
		_unit addHeadgear "rhs_6b27m_ml";
		_unit addVest "rhs_6b23_ML_6sh92_vog_headset";
		_unit addBackpack "rhs_rpg_empty";


// Add weapons & grenades

		_unit addMagazines ["hlc_30Rnd_545x39_t_ak", 10];
		_unit addWeapon "hlc_rifle_ak12";
		_unit addPrimaryWeaponItem "optic_ACO_grn";
		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["SmokeShell", 2];
		_unit addMagazines ["SmokeShellGreen", 2];
		_unit addMagazines ["rhs_mag_m18_purple", 2];
		_unit addMagazines ["CUP_PG7VR_M", 1];
		_unit addweapon "CUP_launch_RPG7V";
		_unit addMagazines ["CUP_PG7VR_M", 1];
		_unit addMagazines ["CUP_PG7VR_M", 1];

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
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_morphine";
		_unit addItem "ACE_morphine";
		_unit addItem "ACE_epinephrine"; 
				_unit addItem "ACE_EarPlugs";

	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);