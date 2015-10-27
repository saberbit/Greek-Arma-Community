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
		
		
		_unit forceaddUniform "rhs_uniform_FROG01_d";
		_unit addHeadgear "rhsusf_mich_helmet_marpatd_norotos_arc";
		_unit addVest "MNP_Vest_USMC";
		_unit addBackpack "rhsusf_assault_eagleaiii_coy";
		_unit additem "ACE_EarPlugs";

		_unit addMagazines ["RH_15Rnd_9x19_M9", 3];
		_unit addweapon "RH_m9";
		_unit addWeapon "ACE_Vector";
		

// Add weapons & grenades

		_unit addMagazines ["30Rnd_556x45_Stanag_Tracer_Red", 10];
		_unit addMagazines ["1Rnd_HE_Grenade_shell", 10];
		_unit addWeapon "RH_M16A4gl";
		_unit addPrimaryWeaponItem "RH_peq15b_top";
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


