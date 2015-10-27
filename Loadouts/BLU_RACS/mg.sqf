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
		_unit forceaddUniform "LOP_U_RACS_Fatigue_01_slv";
		_unit addHeadgear "LOP_H_6B27M_ess_RACS";
		_unit addVest "LOP_V_CarrierLite_TAN";
		_unit addbackpack "B_Kitbag_cbr";

// Add weapons & grenades

		_unit addMagazines ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", 5];
		_unit addWeapon "CUP_lmg_M240";
		_unit addMagazines ["RH_15Rnd_9x19_M9", 2];
		_unit addWeapon "RH_m9";
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
	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);