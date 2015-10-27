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
		_unit forceaddUniform "U_I_HeliPilotCoveralls";
		_unit addHeadgear "rhsusf_hgu56p_mask";
		_unit addVest "V_TacVest_khk";
		_unit addBackpack "tf_rt1523g";

// Add weapons & grenades
		_unit addMagazines ["hlc_30Rnd_9x19_B_MP5", 9];
		_unit addWeapon "hlc_smg_mp5a4";	
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";											

		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["rhs_mag_m18_green", 2];
		_unit addMagazines ["rhs_mag_m18_purple", 2];
		_unit addMagazines ["B_IR_Grenade", 2];

// Add items  
		_unit addItem "rhsusf_ANPVS_15";  
		_unit assignItem "rhsusf_ANPVS_15";  
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
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_Morphine";
		_unit addItem "ACE_Morphine";
		_unit addItem "ACE_Morphine";
		_unit addItem "ACE_Morphine";
		_unit addItem "ACE_epinephrine";
		_unit addItem "ACE_epinephrine";
		_unit addItem "ACE_bloodIV_250";
		_unit addItem "ACE_IR_Strobe_Item";
		_unit addItem "ACE_EarPlugs";
	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);