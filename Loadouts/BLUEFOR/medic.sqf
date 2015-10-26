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
_unit addBackpack "MNP_B_WD_FP";
_unit addHeadgear "MNP_Helmet_PAGST_M81";
_unit addVest "MNP_Vest_M81b";		
		
// Add weapons & grenades

		_unit addMagazines ["30Rnd_556x45_Stanag_Tracer_Red", 10];
		_unit addWeapon "RH_M16A2";						
		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["SmokeShell", 2];
		_unit addMagazines ["SmokeShellGreen", 2];
		_unit addMagazines ["rhs_mag_m18_purple", 2];


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