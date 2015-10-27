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
		
		
		_unit forceaddUniform "MNP_CombatUniform_ISR";
		_unit addHeadgear "rhsusf_ach_bare";
		_unit addVest "MNP_Vest_ISRKahki_2";
		_unit addBackpack "B_AssaultPack_rgr";
		_unit addGoggles "LCG_Shemagh_OD";


// Add weapons & grenades
		
		_unit addMagazines ["RH_17Rnd_9x19_g17", 4];
		_unit addMagazines ["30Rnd_556x45_Stanag_Tracer_Green", 15];
		_unit addWeapon "arifle_TRG21_F";
		_unit addPrimaryWeaponItem "FHQ_optic_MARS";
		_unit addWeapon "RH_g19t";
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
		_unit addItem "ItemRadio";
		_unit assignItem "ItemRadio";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
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