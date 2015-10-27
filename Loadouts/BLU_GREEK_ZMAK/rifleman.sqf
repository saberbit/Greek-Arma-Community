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
		_unit addUniform "GAC_U_DSRT_Fatigue_01";
		_unit addHeadgear "GAC_H_LWH_DSRT_ESS";
		_unit addVest "lbt_tl_od";
		_unit addBackpack "B_Kitbag_rgr";

// Add weapons & grenades
		_unit addMagazines ["hlc_20rnd_762x51_T_G3",13];
		_unit addMagazines ["hlc_200rnd_556x45_M_SAW",1];
		_unit addMagazines ["RH_17Rnd_9x19_g17",3];
		_unit addMagazines ["Chemlight_green",1];
		_unit addMagazines ["Chemlight_red",1];

		_unit addWeapon "hlc_rifle_g3ka4";
		_unit addPrimaryWeaponItem "hlc_muzzle_snds_g3";	
		_unit addPrimaryWeaponItem "RH_eotech553";	
		_unit addWeapon "tf47_at4_HEDP";
		_unit addWeapon "RH_g17";
		_unit addhandgunItem "RH_gemtech9";											
									

		_unit addMagazines ["rhs_mag_m67",5];
		_unit addMagazines ["rhs_mag_m18_green",3];
		_unit addMagazines ["rhs_mag_m18_red",3];

// Add items
		_unit unassignitem "NVGoggles";
		_unit removeitem "NVGoggles";  
		_unit addItem "ItemCompass";  
		_unit assignItem "ItemCompass";  
		_unit addItem "ItemMap";  
		_unit assignItem "ItemMap";  		
		_unit addItem "ItemWatch";  
		_unit assignItem "ItemWatch";  		
		_unit unassignItem "ItemGPS"; 
		_unit removeItem "ItemGPS"; 
		_unit addItem "ACE_HandFlare_White";
		_unit addItem "ACE_HandFlare_White";
		_unit addItem "ACE_HandFlare_Red";
		_unit addItem "ACE_HandFlare_Red";
		_unit addItem "ACE_HandFlare_Green";
		_unit addItem "ACE_HandFlare_Green";
		_unit addItem "ACE_Clacker";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_Morphine";
		_unit addItem "ACE_Morphine";
		_unit addItem "ACE_Morphine";
		_unit addItem "ACE_Morphine";
		_unit addItem "ACE_Morphine";
		_unit addItem "ACE_epinephrine";
		_unit addItem "ACE_bloodIV_250";
		_unit addItem "ACE_EarPlugs";
		_unit addItem "DemoCharge_Remote_Mag";
	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);