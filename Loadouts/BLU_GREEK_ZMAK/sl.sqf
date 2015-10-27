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
		_unit addHeadgear "GAC_H_DSRT_booniehat";
		_unit addVest "lbt_tl_od";
		_unit addBackpack "tf_rt1523g_big_bwmod";

// Add weapons & grenades
		_unit addMagazines ["hlc_20rnd_762x51_T_G3",11];
		_unit addMagazines ["rhs_mag_m67",2];
		_unit addMagazines ["rhs_mag_m18_green",1];
		_unit addMagazines ["RH_17Rnd_9x19_g17",3];
		_unit addMagazines ["rhs_mag_m18_red",1];
		_unit addMagazines ["1Rnd_HE_Grenade_shell",8];
		_unit addMagazines ["1Rnd_Smoke_Grenade_shell",2];
		_unit addMagazines ["1Rnd_SmokeRed_Grenade_shell",2];
		_unit addMagazines ["1Rnd_SmokeGreen_Grenade_shell",2];
		_unit addMagazines ["UGL_FlareWhite_F",3];
		_unit addMagazines ["UGL_FlareGreen_F",3];
		_unit addMagazines ["UGL_FlareRed_F",3];



		_unit addWeapon "HLC_Rifle_g3ka4_GL";
		_unit addPrimaryWeaponItem "hlc_muzzle_snds_g3";
		_unit addPrimaryWeaponItem "RH_eotech553";
		_unit addWeapon "ACE_Vector";
		_unit addWeapon "RH_g17";
		_unit addHandgunitem "RH_gemtech9";



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
		_unit addItem "ACE_HandFlare_White";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_Morphine";
		_unit addItem "ACE_Morphine";
		_unit addItem "ACE_microDAGR";
		_unit addItem "ACE_epinephrine";
		_unit addItem "ACE_bloodIV_250";
		_unit addItem "ACE_EarPlugs";
	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);