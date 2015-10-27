_unit = _this select 0;
_strLoadout = _this select 1;

if (!local _unit) exitWith {};

removeAllWeapons _unit;




switch (_strLoadout) do
{
	case "rifleman":
	{

// Add clothing
		
		

		_unit addMagazines ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 10];
		_unit addWeapon "rhs_weap_m4";
		_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";
		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["SmokeShell", 2];
		_unit addMagazines ["SmokeShellGreen", 2];
		_unit addMagazines ["rhs_mag_m18_purple", 2];
		_unit addItemToBackpack "SatchelCharge_Remote_Mag";


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
		_unit additem "ACE_Clacker";
		_unit addItem "ACE_EarPlugs"; 

	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);