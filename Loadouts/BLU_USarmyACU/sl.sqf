_unit = _this select 0;
_strLoadout = _this select 1;

if (!local _unit) exitWith {};

removeAllWeapons _unit;





switch (_strLoadout) do
{
	case "rifleman":
	{

// Add clothing
		
		

// Add weapons & grenades
		_unit addbackpack "tf_rt1523g_big";
		_unit addMagazines ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 10];
		_unit addMagazines ["rhs_mag_M441_HE", 8];
		_unit addWeapon "rhs_weap_m16a4_carryhandle_M203";
		_unit addPrimaryWeaponItem "FHQ_optic_AC11704";
		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["SmokeShell", 2];
		_unit addMagazines ["SmokeShellGreen", 2];
		_unit addMagazines ["rhs_mag_m18_purple", 2];
		_unit addWeapon "Binocular";
		_unit addBackpack "tf_mr3000_multicam";
		

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
		_unit addItem "ACE_EarPlugs";

	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);



