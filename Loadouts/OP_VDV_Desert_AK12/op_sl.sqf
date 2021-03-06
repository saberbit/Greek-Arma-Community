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
		
		
		_unit forceaddUniform "LOP_U_SLA_Fatigue_01";
		_unit addHeadgear "LOP_H_SLA_Beret";
		_unit addVest "LOP_V_6B23_6Sh92_OLV";
		_unit addBackpack "tf_bussole";


// Add weapons & grenades

		_unit addMagazines ["hlc_30Rnd_545x39_B_AK", 10];
		_unit addMagazines ["hlc_VOG25_AK", 10];
		_unit addWeapon "hlc_rifle_aks74";
		_unit addPrimaryWeaponItem "hlc_muzzle_545SUP_AK";
		_unit addMagazines ["HandGrenade", 2];
		_unit addMagazines ["SmokeShell", 2];
		_unit addMagazines ["SmokeShellGreen", 2];
		_unit addMagazines ["rhs_mag_m18_purple", 2];
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
		_unit addItemToBackpack "DemoCharge_Remote_Mag";
		_unit addItemToBackpack "ACE_Clacker";
_unit addItemToBackpack "ACE_EarPlugs";
		

// Add items  
		_unit additem "ACE_NVG_Gen4";
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
		_unit addItem "ACE_EarPlugs";

	};
};


_primaryWeapon = primaryWeapon _unit;
_unit selectweapon _primaryWeapon;
// Fix for weapons with grenade launcher
_muzzles = getArray(configFile>>"cfgWeapons" >> _primaryWeapon >> "muzzles");
_unit selectWeapon (_muzzles select 0);



