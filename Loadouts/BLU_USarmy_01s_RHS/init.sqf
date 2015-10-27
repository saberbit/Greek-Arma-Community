setViewDistance 1000;
player enableFatigue false;
[] execVM "CSSA3\CSSA3_init.sqf";
] execVM "script\QS_icons.sqf";
			
if (local player) then {
  		player enableFatigue false;
   		player addEventhandler ["Respawn", {player enableFatigue false}];
  	player addEventhandler ["Killed", {player enableFatigue false}];
	};

// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};

// Set Time Of Day
if isMultiplayer then { skipTime (paramsArray select 0)};

// Wait until player is initialized
if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

[] execVM "script\cleanup.sqf";
enableSaving[false,false];

};  

//setSkill for ai on map from editor
//AI Skill  
{
_x setUnitAbility 0.1;
_x setskill ["aimingAccuracy",(paramsArray select 1)];
_x setskill ["aimingShake",(paramsArray select 2)];
_x setskill ["aimingSpeed",(paramsArray select 3)];
//_x setskill ["Endurance",(paramsArray select 4)];
_x setskill ["spotDistance",(paramsArray select 5)];
_x setskill ["spotTime",(paramsArray select 6)];
_x setskill ["courage",(paramsArray select 7)];
_x setskill ["reloadSpeed",(paramsArray select 8)];
_x setskill ["commanding", (paramsArray select 9)];

_aA = _x skill "aimingAccuracy";
_aS = _x skill "aimingShake";
_aSp = _x skill "aimingSpeed";
\\_e = _x skill "Endurance";
_sD = _x skill "spotDistance";
_sT = _x skill "spotTime";
_c = _x skill "courage";
_rS =_x skill "reloadSpeed";

if (DebugDeep) then {
hint format [
				"unit: %1\naimingAccuracy: %2\naimingShake: %3
				\naimingSpeed: %4\nEndurance: %5\nspotDistance: %6
				\nspotTime: %7\ncourage: %8\nreloadSpeed: %9"
				
				,_x,_aA,_aS,_aSp,_e,_sD,_sT,_c,_rS];
//sleep 0.1;
};
} forEach allUnits;

