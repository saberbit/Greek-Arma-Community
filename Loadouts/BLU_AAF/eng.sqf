_unit = _this select 0;
_strLoadout = _this select 1;

if (!local _unit) exitWith {};






switch (_strLoadout) do
{
	case "rifleman":
	{

// Add clothing
		
		
		_unit addItemToBackpack "ACE_Clacker";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";


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

	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);