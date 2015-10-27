_unit = _this select 0;
_strLoadout = _this select 1;

if (!local _unit) exitWith {};

removeAllWeapons _unit;
removebackpack _unit;
removeGoggles _unit;
removeHeadgear _unit;

		_unit forceaddUniform "MNP_CombatUniform_RO3_Rg";
		_unit addHeadgear "rhs_tsh4";
		_unit addVest "rhs_6sh46";
				_unit additem "ACE_EarPlugs";


switch (_strLoadout) do
{
	case "rifleman":
	{

// Add clothing
		
		
		_unit addMagazines ["hlc_30Rnd_545x39_B_AK", 10];
		_unit addWeapon "hlc_rifle_aks74u";
		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["SmokeShell", 2];
		_unit addMagazines ["SmokeShellGreen", 2];
		_unit addMagazines ["rhs_mag_m18_purple", 2];
		_unit addItemToBackpack "rhsusf_m112_mag";
		_unit addMagazines "ACE_HandFlare_White";
		_unit addMagazines "ACE_HandFlare_White";
		_unit addMagazines "ACE_HandFlare_White";
		_unit addMagazines "ACE_HandFlare_White";
		_unit addMagazines "ACE_HandFlare_White";
		_unit addMagazines "ACE_HandFlare_White";
		

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