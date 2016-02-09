// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: fn_getPos3D.sqf
//	@file Author: AgentRev

// This function is to counter the fact that "getPos" is relative to the floor under the object,
// while most functions require positions to be from ground or sea wave level, whichever is highest

private "_pos";
ASLToAGL getPosASL _this;  // not sure but this didn't have a semi colon

/*
if (surfaceIsWater _pos) then
{
	_pos = getPosASLW _this;
};

_pos
*/