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
		
		
		_unit forceaddUniform "ARC_FR_Daguet_Uniform_Light";
		_unit addHeadgear "ARC_FR_Daguet_Mich";
		_unit addVest "ARC_FR_Daguet_PlateCarrier_2";
		_unit addBackpack "ARC_FR_Backpack_Daguet_Med";

// Add weapons & grenades
		_unit addMagazines ["30Rnd_556x45_Stanag_Tracer_Red", 10];
		_unit addMagazines ["1Rnd_HE_Grenade_shell", 10];
		_unit addWeapon "prpl_famas_g2";
		_unit addPrimaryWeaponItem "FHQ_optic_AC11704";					
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