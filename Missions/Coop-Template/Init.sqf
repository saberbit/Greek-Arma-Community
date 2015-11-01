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
//if isMultiplayer then { skipTime (paramsArray select 7)};
//if isServer then {definedTime = (paramsArray select 7)};
//if isServer then {skipTime definedTime;};
//
//-------------------------------Task Force Radio Predefined Settings----------------------------//
//
#include "\task_force_radio\functions\common.sqf";
if ((isServer) or (isDedicated)) then {
   tf_no_auto_long_range_radio = true;/////////////////////Not auto Longrange  Radios to Players
   publicVariable "tf_no_auto_long_range_radio";///////////                 ""             /////////////////
   tf_same_sw_frequencies_for_side = true;
   publicVariable "tf_same_sw_frequencies_for_side";
   tf_same_lr_frequencies_for_side = true;
   publicVariable "tf_same_lr_frequencies_for_side";
   _settingsSwWest = false call TFAR_fnc_generateSwSettings;/////////////////////////////////////
   _settingsSwWest set [2, ["40","45","50","55","58","60","70","80","35"]];////////////////////
   tf_freq_west = _settingsSwWest;////////////////////////////////////////////////////////////////WEST
   _settingsLrWest = false call TFAR_fnc_generateLrSettings;//////////////////////////////////////
   _settingsLrWest set [2, ["40","45","50","55","58","60","70","80","35"]];////////////////////
   tf_freq_west_lr = _settingsLrWest;///////////////////////////////////////////////////////////////////
   //
   _settingsSwEast = false call TFAR_fnc_generateSwSettings;////////////////////////////////////
   _settingsSwEast set [2, ["40","45","50","55","58","60","70","80","35"]];///////////////////
   tf_freq_east = _settingsSwEast;////////////////////////////////////////////////////////////////EAST
   _settingsLrEast = false call TFAR_fnc_generateLrSettings;/////////////////////////////////////
   _settingsLrEast set [2,  ["40","45","50","55","58","60","70","80","35"]];//////////////////
   tf_freq_east_lr = _settingsLrEast;//////////////////////////////////////////////////////////////////
   //
   _settingsSwGuer = false call TFAR_fnc_generateSwSettings;/////////////////////////////////////
   _settingsSwGuer set [2, ["40","45","50","55","58","60","70","80","35"]];////////////////////
   tf_freq_guer = _settingsSwGuer;////////////////////////////////////////////////////////////////GUER
   _settingsLrGuer = false call TFAR_fnc_generateLrSettings;//////////////////////////////////////
   _settingsLrGuer set [2, ["40","45","50","55","58","60","70","80","35"]];////////////////////
   tf_freq_guer_lr = _settingsLrGuer;///////////////////////////////////////////////////////////////////
   //
   //---------------------------------Setting encryption values-------------------------------------//
   tf_west_radio_code = "_bluefor";
   tf_east_radio_code = "_opfor";
   tf_guer_radio_code = "_independent";
};

//----------------------------------------AI Skill  Settings-------------------------------------//
{
_x setskill ["aimingAccuracy",(paramsArray select 0)];      //Set AI aiming Accuracy
_x setskill ["aimingShake",(paramsArray select 1)];          //Set AI aimingShake
_x setskill ["aimingSpeed",(paramsArray select 2)];          //Set AI aimingSpeed
_x setskill ["spotDistance",(paramsArray select 3)];         //Set AIspotDistance
_x setskill ["spotTime",(paramsArray select 4)];              //Set AIspotTime
_x setskill ["courage",(paramsArray select 5)];              //Set AI courage
_x setskill ["reloadSpeed",(paramsArray select 6)];      //Set AI reloadSpeed

} forEach allUnits;