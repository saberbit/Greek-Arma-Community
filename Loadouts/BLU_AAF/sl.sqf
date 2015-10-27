_unit = _this select 0;
_strLoadout = _this select 1;

if (!local _unit) exitWith {};




switch (_strLoadout) do
{
	case "rifleman":
	{

// Add clothing
		
		_unit addBackpack "tf_anprc155";
		_unit addMagazines ["30Rnd_556x45_Stanag_Tracer_yellow", 3];
		_unit addWeapon "ACE_Vector";
		

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



