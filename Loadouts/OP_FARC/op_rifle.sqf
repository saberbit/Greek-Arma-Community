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
		_unit forceaddUniform "ibr_mol_army_uniform";
		_unit addGoggles "Shemagh_FaceRed";
		_unit addHeadgear "LOP_H_ChDKZ_Beret";
		_unit addVest "ibr_mol_o_vest";
		_unit addBackpack "CUP_B_AlicePack_Khaki";



// Add weapons & grenades

		_unit addMagazines ["hlc_20Rnd_762x51_B_fal", 10];
		_unit addWeapon "hlc_rifle_c1A1";
		_unit addMagazines ["rhs_mag_m67", 2];
		_unit addMagazines ["rhs_mag_an_m8hc", 2];
		_unit addMagazines ["rhs_mag_m18_green", 2];
		_unit addMagazines ["rhs_mag_m18_red", 2];
		_unit addMagazines ["ACE_HandFlare_White",5];
		
		
		

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
		_unit additem  "ACE_EarPlugs";
		

	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);