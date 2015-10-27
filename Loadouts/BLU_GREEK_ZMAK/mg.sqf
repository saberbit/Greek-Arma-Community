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
		_unit forceaddUniform "GAC_U_DSRT_Fatigue_01";
		_unit addHeadgear "GAC_H_LWH_DSRT_ESS";
		_unit addVest "lbt_tl_od";
		_unit addBackpack "B_Kitbag_rgr";

// Add weapons & grenades
		_unit addMagazines ["hlc_200rnd_556x45_M_SAW",6];
		_unit addWeapon "hlc_lmg_minimi_railed";
		_unit addWeapon "RH_g17";
		_unit addhandgunitem "RH_gemtech9";
		_unit addMagazines ["RH_17Rnd_9x19_g17",3];


		_unit addMagazines ["rhs_mag_m67",4];
		_unit addMagazines ["rhs_mag_m18_green",2];
		_unit addMagazines ["rhs_mag_m18_red",2];

// Add items  
		_unit unassignitem "NVGoggles";
		_unit removeitem "NVGoggles";
		_unit addItem "ItemCompass";  
		_unit assignItem "ItemCompass";  
		_unit addItem "ItemMap";  
		_unit assignItem "ItemMap";  		
		_unit addItem "ItemWatch";  
		_unit assignItem "ItemWatch";  		
		_unit addItem "ItemGPS"; 
		_unit assignItem "ItemGPS"; 
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
		_unit addItem "ACE_IR_Strobe_Item";
	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);