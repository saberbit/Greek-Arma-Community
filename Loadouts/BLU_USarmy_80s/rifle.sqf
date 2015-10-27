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
_unit forceAddUniform "MNP_CombatUniform_USW";
_unit addHeadgear "MNP_Helmet_PAGST_M81";
_unit addVest "MNP_Vest_M81b";

		_unit addMagazines ["RH_15Rnd_9x19_M9", 3];
		_unit addweapon "RH_m9";
		_unit addMagazines ["30Rnd_556x45_Stanag_Tracer_Red", 10];
		_unit addWeapon "RH_M16A2";
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