//	@file Name: playerSetupGear.sqf
//	@file Author: [GoT] JoSchaap, AgentRev

private ["_uid","_player", "_uniform", "_vest", "_headgear", "_goggles","_supporterLevel"];
_player = _this;

_supportersEnabled = ["A3W_supportersEnabled"] call isConfigOn;
_supporterLevel = player getVariable ["supporter", 0];

// Clothing is now defined in "client\functions\getDefaultClothing.sqf"

_uniform = [_player, "uniform"] call getDefaultClothing;
_vest = [_player, "vest"] call getDefaultClothing;
_headgear = [_player, "headgear"] call getDefaultClothing;
_goggles = [_player, "goggles"] call getDefaultClothing;

if (_uniform != "") then { _player addUniform _uniform };
if (_vest != "") then { _player addVest _vest };
// if (_headgear != "") then { _player addHeadgear _headgear };
if (_goggles != "") then { _player addGoggles _goggles };

sleep 0.1;

// Add GPS
_player linkItem "ItemGPS";

// Remove NVG
if (hmd _player != "") then { _player unlinkItem hmd _player };

// Add NVG
 _player linkItem "NVGoggles";	
 
 // Loadouts here
_this call classes;


if (_player == player) then
{
	thirstLevel = 100;
	hungerLevel = 100;
};
