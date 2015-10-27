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

_unit addBackpack "rhsusf_assault_eagleaiii_coy";

		
// Add weapons & grenades
		_unit addMagazines ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10];
_unit addWeapon "rhs_weap_m16a4_carryhandle";
_unit addPrimaryWeaponItem "RH_peq15_top";
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";
_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";					
		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["SmokeShell", 2];
		_unit addMagazines ["SmokeShellGreen", 2];
		_unit addMagazines ["rhs_mag_m18_purple", 2];


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
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine";
		_unit addItem "ACE_bloodIV"; 
		_unit addItem "ACE_bloodIV"; 
		_unit addItem "ACE_bloodIV"; 
		_unit addItem "ACE_bloodIV"; 
		_unit addItem "ACE_bloodIV"; 
		_unit addItem "ACE_bloodIV"; 
		_unit addItem "ACE_morphine";
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);