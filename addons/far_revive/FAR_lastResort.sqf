// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: FAR_lastResort.sqf
//	@file Author: AgentRev

private ["_hasCharge", "_hasSatchel", "_mineType", "_pos", "_mine", "_shout"];

_hasCharge = "DemoCharge_Remote_Mag" in magazines player;
_hasSatchel = "SatchelCharge_Remote_Mag" in magazines player;

_shout = 	[									// ["filename", volume, bomb timer]
				["lastresort", 0.7, 1.75],
				["yililili", 0.5, 1.9]
			] call BIS_fnc_selectRandom;
		
  
if !(player getVariable ["performingDuty", false]) then
{
	if (_hasCharge || _hasSatchel) then
	{
			player setVariable ["performingDuty", true];
			playSound3D [call currMissionDir + "client\sounds\" + (_shout select 0) + ".wss", vehicle player, false, getPosASL player, (_shout select 1), 1, 1000];

			if (_hasSatchel) then
			{
				_mineType = "SatchelCharge_F";
				player removeMagazine "SatchelCharge_Remote_Mag";
			}
			else
			{
				_mineType = "DemoCharge_F";
				player removeMagazine "DemoCharge_Remote_Mag";
			};

			sleep (_shout select 2);

			_pos = getPosATL player;
			_pos set [2, (_pos select 2) + 0.5];

			_mine = createMine [_mineType, _pos, [], 0];
			_mine setDamage 1;
			player setDamage 1;
			player setVariable ["performingDuty", nil];
	}
	else
	{
		titleText ["Get an explosive charge next time, my child.", "PLAIN", 0.5];
	};
};