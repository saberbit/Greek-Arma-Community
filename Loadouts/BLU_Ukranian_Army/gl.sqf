_unit = _this select 0;
_strLoadout = _this select 1;

if (!local _unit) exitWith {};

removeAllWeapons _unit;
removeAllAssignedItems  _unit;
removebackpack _unit;
removeGoggles _unit;
removeHeadgear _unit;

switch (_strLoadout) do
{
	case "rifleman":
	{
// Add clothing
		_unit addUniform "ARC_USMC_MARPAT_Desert_Uniform_Light";
		_unit addHeadgear "ARC_USMC_MARPAT_Desert_Mich";
		_unit addVest "LOP_V_CarrierRig_KHK";
		_unit addBackpack "ARC_USMC_Kitbag_compact_MARPAT_Desert";

// Add weapons & grenades
		_unit addMagazines ["RH_30Rnd_556x45_Mk262", 10];
		_unit addMagazines ["1Rnd_HE_Grenade_shell", 10];
		_unit addWeapon "RH_M16A2gl";
		_unit addWeapon "Binoculars";							


		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["SmokeShell", 2];
		_unit addMagazines ["SmokeShellGreen", 2];
		_unit addMagazines ["rhs_mag_m18_purple", 2];

// Add items  

		_unit addItem "tf_anprc152_2";  
		_unit assignItem "tf_anprc152_2";  
		_unit addItem "ItemCompass";  
		_unit assignItem "ItemCompass";  
		_unit addItem "ItemMap";  
		_unit assignItem "ItemMap";  		
		_unit addItem "ItemWatch";  
		_unit assignItem "ItemWatch";  		
		_unit addItem "ItemGPS"; 
		_unit assignItem "ItemGPS"; 
		_unit addItem "AGM_Bandage";
		_unit addItem "AGM_Bandage";
		_unit addItem "AGM_Bandage";
		_unit addItem "AGM_Morphine";
		_unit addItem "AGM_Morphine";
		_unit addItem "AGM_Epipen";
		_unit addItem "AGM_EarBuds";
	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);