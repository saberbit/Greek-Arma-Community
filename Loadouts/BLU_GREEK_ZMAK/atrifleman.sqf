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
		_unit addUniform "rhs_uniform_cu_ocp_101st";
		_unit addHeadgear "rhsusf_ach_helmet_headset_ess_ocp";
		_unit addVest "rhsusf_iotv_ocp_Rifleman";
		_unit addBackpack "B_Kitbag_cbr";

// Add weapons & grenades
		_unit addMagazines ["30Rnd_556x45_Stanag_Tracer_Red",17];
		_unit addMagazines ["hlc_200rnd_556x45_M_SAW",1];
		_unit addMagazines ["B_IR_Grenade",2];
		_unit addMagazines ["Chemlight_green",2];
		_unit addMagazines ["Chemlight_red",2];

		_unit addWeapon "hlc_rifle_M4";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";		
		_unit addPrimaryWeaponItem "FHQ_optic_AIM";
		_unit addWeapon "tf47_at4_HEDP";											
									

		_unit addMagazines ["rhs_mag_m67",5];
		_unit addMagazines ["rhs_mag_m18_green",3];
		_unit addMagazines ["rhs_mag_m18_red",3];

// Add items  
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