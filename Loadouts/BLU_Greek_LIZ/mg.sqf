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
		
		
		_unit forceaddUniform "GAC_U_LZD_Fatigue_01";
		_unit addHeadgear "GAC_H_6B26_ess_LZD";
		_unit addVest "GAC_V_6Sh92_Radio_LZD";
		_unit addBackpack "B_Kitbag_rgr";


// Add weapons & grenades
		
		_unit addMagazines ["RH_7Rnd_45cal_m1911", 2];
		_unit addMagazines ["hlc_200rnd_556x45_M_SAW", 4];
		_unit addWeapon "hlc_lmg_minimi_railed";
		_unit addWeapon "RH_m1911";
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