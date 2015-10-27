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
		
		
		_unit forceaddUniform "MNP_CombatUniform_OD_Rg";
		_unit addHeadgear "MNP_Helmet_PAGST_RO";
		_unit addVest "GAC_V_6Sh92_OLV";
		_unit addBackpack "tf_rt1523g_green";
		_unit additem "ACE_EarPlugs";


// Add weapons & grenades
		_unit addMagazines ["20Rnd_SA_45ACP", 10];
		_unit addWeapon "smg_SA_m1a1_F";
		_unit addWeapon "Binocular";
				_unit addMagazines ["rhs_mag_m67", 2];
		_unit addMagazines ["rhs_mag_an_m8hc", 2];
		_unit addMagazines ["rhs_mag_m18_green", 2];
		_unit addMagazines ["rhs_mag_m18_red", 2];
		

// Add weapons & grenades
		

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



