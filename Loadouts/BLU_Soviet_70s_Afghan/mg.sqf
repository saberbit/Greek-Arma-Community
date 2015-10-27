_unit = _this select 0;
_strLoadout = _this select 1;

if (!local _unit) exitWith {};

removeAllWeapons _unit;
removeGoggles _unit;
removeHeadgear _unit;

		_unit forceaddUniform "rhs_uniform_m88_patchless";
		_unit addHeadgear "LOP_H_SSh68Helmet_OLV";
		_unit addVest "LOP_V_6Sh92_OLV";
		_unit additem "ACE_EarPlugs";

switch (_strLoadout) do
{
	case "rifleman":
	{

// Add clothing
		
		
		_unit addMagazines ["rhs_100Rnd_762x54mmR_green", 5];
		_unit addWeapon "rhs_weap_pkm";
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