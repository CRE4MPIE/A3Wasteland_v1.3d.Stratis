// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	["GenStore1", 1, [270,0.25], []],
	["GenStore2", 4, [310,0.25], []],
	["GenStore3", 4, [340,0.25], []],
	["GenStore4", 0, [5,0.25], []],

	["GunStore2", 1, [138,0.25], []],
	["GunStore3", 4, [130,0.25], []],
	["GunStore4", 1, [30, 1.5], []],
	["GunStore5", 1, [330,0.25], []],

	["VehStore1", 0, [195,0.25], ["Planes"]],
	["VehStore2", 2, [285,0.25], ["Boats"]],
	["VehStore3", 1, [245,0.25], ["Planes"]],
	["VehStore4", 1, [135,0.25], ["Planes"]],
	["VehStore5", 1, [130,0.25], ["Planes","Boats"]]
	
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	['GenStore1', [['weapon', ''], ['uniform', 'U_B_PilotCoveralls']]],
	['GenStore2', [['weapon', ''], ['uniform', 'U_O_PilotCoveralls']]],
	['GenStore3', [['weapon', ''], ['uniform', 'U_I_pilotCoveralls']]],
	['GenStore4', [['weapon', ''], ['uniform', 'U_I_pilotCoveralls']]],

	
	["GunStore2", [["weapon", "LMG_Zafir_F"], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["GunStore3", [["weapon", "arifle_MXM_Black_F"], ["uniform", "U_O_SpecopsUniform_blk"]]],
	["GunStore4", [["weapon", "srifle_GM6_SOS_F"], ["uniform", "U_I_CombatUniform_tshirt"]]],
	["GunStore5", [["weapon", "arifle_MX_GL_Black_F"], ["uniform", "U_IG_Guerilla1_1"]]],	
	

	['VehStore1', [['weapon', ''], ['uniform', 'U_BG_Guerilla2_1']]],
	['VehStore2', [['weapon', ''], ['uniform', 'U_Rangemaster']]],
	['VehStore3', [['weapon', ''], ['uniform', 'U_B_HeliPilotCoveralls']]],
	['VehStore4', [['weapon', ''], ['uniform', 'U_Competitor']]],
	['VehStore5', [['weapon', ''], ['uniform', 'U_Competitor']]]
];
