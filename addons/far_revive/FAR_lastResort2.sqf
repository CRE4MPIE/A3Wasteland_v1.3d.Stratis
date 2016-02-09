// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: FAR_lastResort.sqf
//	@file Author: AgentRev

private ["_hasCharge", "_hasSatchel", "_mineType", "_pos", "_mine"];

_hasCharge = "DemoCharge_Remote_Mag" in magazines player;
_hasSatchel = "SatchelCharge_Remote_Mag" in magazines player;

if !(player getVariable ["performingDuty", false]) then
{
	if (_hasCharge || _hasSatchel) then
	{
		
		titleText ["Sorry you are wounded! No 72 Virgins for you =(", "PLAIN", 0.5];
		
	}
	else
	{
		titleText ["Get an explosive charge next time, my child.", "PLAIN", 0.5];
	};
};
