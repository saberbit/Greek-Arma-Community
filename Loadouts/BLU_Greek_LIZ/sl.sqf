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
		_unit addVest "GAC_V_6Sh92_Vog_LZD";
		_unit addBackpack "tf_rt1523g_green";


// Add weapons & grenades
		_unit addMagazines ["1Rnd_HE_Grenade_shell", 8];
		_unit addMagazines ["1Rnd_Smoke_Grenade_shell", 4];
		_unit addMagazines ["RH_7Rnd_45cal_m1911", 3];
		_unit addMagazines ["hlc_20rnd_762x51_b_G3", 10];
		_unit addWeapon "HLC_Rifle_g3ka4_GL";
		_unit addWeapon "RH_m1911";
		_unit addWeapon "ACE_Vector";
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