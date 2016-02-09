// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_AirWreck.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "sideMissionDefines.sqf"

private ["_nbUnits", "_wreckPos", "_wreck", "_box1", "_box2"];

_setupVars =
{
	_missionType = "Aircraft Wreck";
	_locationsArray = MissionSpawnMarkers;
	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_setupObjects =
{
	_missionPos = markerPos _missionLocation;
	_wreckPos = _missionPos vectorAdd ([[25 + random 20, 0, 0], random 360] call BIS_fnc_rotateVector2D);
		//delete existing base parts and vehicles at location
	_baseToDelete = nearestObjects [_wreckPos, ["All"], 25];
	{ deleteVehicle _x } forEach _baseToDelete; 
	
	// Class, Position, Fuel, Ammo, Damage, Special
	_wreck = ["O_Heli_Light_02_unarmed_F", _wreckPos, 0, 0, 1] call createMissionVehicle;

_randomBox = ["mission_USLaunchers","mission_USSpecial","mission_Main_A3snipers","mission_TOP_Sniper","mission_TOP_Gear1","airdrop_DLC_Rifles","airdrop_DLC_LMGs","airdrop_Snipers"] call BIS_fnc_selectRandom;
	_randomCase = ["Box_FIA_Support_F","Box_FIA_Wps_F","Box_FIA_Ammo_F","Box_NATO_WpsSpecial_F","Box_East_WpsSpecial_F","Box_NATO_Ammo_F","Box_East_Ammo_F"] call BIS_fnc_selectRandom;
	
	_box1 = createVehicle [_randomCase, _missionPos, [], 5, "None"];
	_box1 setDir random 360;
	[_box1, _randomBox] call fn_refillbox;
	// Mission completed

	_randomBox = ["mission_USLaunchers","mission_USSpecial","mission_Main_A3snipers","mission_TOP_Sniper","mission_TOP_Gear1","airdrop_DLC_Rifles","airdrop_DLC_LMGs","airdrop_Snipers"] call BIS_fnc_selectRandom;
	_randomCase = ["Box_FIA_Support_F","Box_FIA_Wps_F","Box_FIA_Ammo_F","Box_NATO_WpsSpecial_F","Box_East_WpsSpecial_F","Box_NATO_Ammo_F","Box_East_Ammo_F"] call BIS_fnc_selectRandom;
	
	_box2 = createVehicle [_randomCase, _missionPos, [], 5, "None"];
	_box2 setDir random 360;
	[_box2, _randomBox] call fn_refillbox;

	{ _x setVariable ["R3F_LOG_disabled", true, true] } forEach [_box1,_box2];

		// NPC Randomizer 
_randomGroup = [createGroup1,createGroup2,createGroup3,createGroup4,createGroup5,createGroup6,createGroup7,createGroup8,createGroup9,createGroup10] call BIS_fnc_selectRandom;
_aiGroup  = createGroup CIVILIAN;
[_aiGroup, _missionPos] spawn _randomGroup;

	_missionPicture = getText (configFile >> "CfgVehicles" >> typeOf _wreck >> "picture");
	_missionHintText = "A supply helicopter has come down under enemy fire!";
};

_waitUntilMarkerPos = nil;
_waitUntilExec = nil;
_waitUntilCondition = nil;

_failedExec =
{
	// Mission failed
	{ deleteVehicle _x } forEach [_box1, _box2, _wreck];
};

_successExec =
{
	// Mission completed
	{ _x setVariable ["R3F_LOG_disabled", false, true] } forEach [_box1, _box2];
	deleteVehicle _wreck;

	_successHintMessage = "The airwreck supplies have been cleaned up, well done.";
};

_this call sideMissionProcessor;
