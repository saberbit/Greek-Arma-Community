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
		
		
		_unit forceaddUniform "MNP_CombatUniform_DDPMR";
		_unit addHeadgear "SP_Mk7Helmet_dpm_d2";
		_unit addVest "V_PlateCarrierL_CTRG";
		_unit addBackpack "CUP_B_USPack_Coyote";
		_unit additem "ACE_EarPlugs";


// Add weapons & grenades
		_unit addMagazines ["30rnd_556_magazine", 10];
		_unit addWeapon "kio_l85a2";
		_unit addMagazines ["rhs_mag_m67", 2];
		_unit addMagazines ["rhs_mag_an_m8hc", 2];
		_unit addMagazines ["rhs_mag_m18_green", 2];
		_unit addMagazines ["rhs_mag_m18_red", 2];


// Add items  
 _unit addItem "ACE_EarPlugs";
		_unit addItem "ItemCompass";  
		_unit assignItem "ItemCompass";  
		_unit addItem "ItemMap";  
		_unit assignItem "ItemMap";  		
		_unit addItem "ItemWatch";  
		_unit assignItem "ItemWatch";  		
		_unit addItem "ItemGPS"; 
		_unit assignItem "ItemGPS";
		_unit linkItem "rhsusf_ANPVS_15"; 
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_morphine";
		_unit addItem "ACE_morphine";
		_unit addItem "ACE_epinephrine";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing"; 
		_unit addItem "ACE_fieldDressing";
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine"; 
		_unit addItem "ACE_epinephrine";
		_unit addItem "ACE_bloodIV"; 
		_unit addItem "ACE_bloodIV"; 
		_unit addItem "ACE_bloodIV"; 
		_unit addItem "ACE_bloodIV"; 
		_unit addItem "ACE_bloodIV"; 
		_unit addItem "ACE_bloodIV"; 
		_unit addItem "ACE_morphine";
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
		_unit addItem "ACE_morphine"; 
	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);