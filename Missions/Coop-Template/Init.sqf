//----------------------------------JIP - Scripts Calls - And Settings------------------------//
//
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;}; // JIP Check (This code should be placed first line of init.sqf file)
//
setViewDistance 1000; //Start JIP View Distance Settings
//
[] execVM "CSSA3\CSSA3_init.sqf"; // Spectator Mod
//
[true,30,false,true,30,3,true,[]] execVM "script\WerthlesHeadless.sqf"; //Headless Cient Cycle Settings
//

if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};}; // Wait until player is initialized
[] execVM "script\clean.sqf"; //Cleanup Script
player addRating 999999; // No Renegade Players From Teamkills
enableSaving[false,false]; //Saving Progress Settings

// ----------------------------------------Set Time Of Day------------------------------------//
//
//if isMultiplayer then { skipTime (paramsArray select 0)};
//if isServer then {definedTime = (paramsArray select 0)};
//if isServer then {skipTime definedTime;};
//
//
//----------------------------------------AI Skill  Settings-------------------------------------//
{
//_x setskill ["TimeOfDay",(paramsArray select 0)];                //Set Time Of Day
_x setskill ["aimingAccuracy",(paramsArray select 1)];      //Set AI aiming Accuracy
_x setskill ["aimingShake",(paramsArray select 2)];          //Set AI aimingShake
_x setskill ["aimingSpeed",(paramsArray select 3)];          //Set AI aimingSpeed
_x setskill ["spotDistance",(paramsArray select 4)];         //Set AIspotDistance
_x setskill ["spotTime",(paramsArray select 5)];              //Set AIspotTime
_x setskill ["courage",(paramsArray select 6)];              //Set AI courage
_x setskill ["reloadSpeed",(paramsArray select 7)];      //Set AI reloadSpeed

} forEach allUnits;