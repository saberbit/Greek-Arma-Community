_unit = _this select 0;
_strLoadout = _this select 1;

if (!local _unit) exitWith {};

removeAllWeapons _unit;
removebackpack _unit;
removeGoggles _unit;
removeHeadgear _unit;

		_unit forceaddUniform "MNP_CombatUniform_US3Co";
		_unit addHeadgear "MNP_Helmet_PAGST_US3Co";
		_unit addVest "V_IBA_MG";
		_unit additem "ACE_EarPlugs";
		_unit addBackpack "B_Carryall_oli";





switch (_strLoadout) do
{
	case "rifleman":
	{

// Add clothing
		
		

// Add weapons & grenades
		_unit addMagazines ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 10];
		_unit addWeapon "rhs_weap_m4";
		_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
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
		_unit addItem "ACE_EarPlugs";
	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);