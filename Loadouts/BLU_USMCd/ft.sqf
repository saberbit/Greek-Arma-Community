_unit = _this select 0;
_strLoadout = _this select 1;

if (!local _unit) exitWith {};

removeAllWeapons _unit;



switch (_strLoadout) do
{
	case "rifleman":
	{

// Add clothing
		

		_unit addBackpack "tf_rt1523g_sage";
		_unit addMagazines ["RH_15Rnd_9x19_M9", 3];
		_unit addweapon "RH_m9";
		_unit addWeapon "ACE_Vector";
		

// Add weapons & grenades

		_unit addMagazines ["rhs_mag_M433_HEDP", 10];
				_unit addMagazines ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10];
_unit addWeapon "rhs_weap_m16a4_carryhandle_M203";
_unit addPrimaryWeaponItem "RH_peq15_top";
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";
		_unit addMagazines ["rhs_mag_m67", 2];
		_unit addMagazines ["rhs_mag_an_m8hc", 2];
		_unit addMagazines ["rhs_mag_m18_green", 2];
		_unit addMagazines ["rhs_mag_m18_red", 2];
		

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



