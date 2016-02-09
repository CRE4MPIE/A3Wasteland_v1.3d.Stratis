//	@file Version: 1.0
//	@file Name: midGroup.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 21:58
//	@file Args:

if (!isServer) exitWith {};

private ["_group", "_pos", "_leader", "_man2", "_man3", "_man4", "_man5", "_man6"];

_group = _this select 0;
_pos = _this select 1;

// Leader
_leader = _group createUnit ["C_man_polo_1_F", [(_pos select 0) + 10, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _leader;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_leader addUniform "U_O_PilotCoveralls";
_leader addVest "V_TacVest_khk";
_leader addBackpack "B_Kitbag_rgr";
_leader addMagazine "30Rnd_65x39_caseless_mag";
_leader addWeapon "arifle_MX_GL_Hamr_pointer_F";
_leader addMagazine "30Rnd_65x39_caseless_mag";
_leader addMagazine "30Rnd_65x39_caseless_mag";
_leader addMagazine "RPG32_F";
_leader addWeapon "launch_RPG32_F";
_leader addMagazine "RPG32_F";
_leader addHeadgear "H_Cap_blk_Raven";



// Soldier2
_man2 = _group createUnit ["C_man_polo_2_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _man2;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man2 addUniform "U_O_PilotCoveralls";
_man2 addVest "V_TacVest_khk";
_man2 addBackpack "B_Kitbag_rgr";
_man2 addMagazine "30Rnd_65x39_caseless_mag";
_man2 addWeapon "arifle_MX_GL_Hamr_pointer_F";
_man2 addMagazine "30Rnd_65x39_caseless_mag";
_man2 addMagazine "RPG32_F";
_man2 addWeapon "launch_RPG32_F";
_man2 addMagazine "RPG32_F";
_man2 addHeadgear "H_Cap_blk_Raven";



// Soldier3
_man3 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
removeAllAssignedItems _man3;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man3 addUniform "U_O_PilotCoveralls";
_man3 addVest "V_TacVest_khk";
_man3 addBackpack "B_Kitbag_rgr";
_man3 addMagazine "30Rnd_65x39_caseless_mag";
_man3 addWeapon "arifle_MX_GL_Hamr_pointer_F";
_man3 addMagazine "30Rnd_65x39_caseless_mag";
_man3 addMagazine "30Rnd_65x39_caseless_mag";
_man3 addHeadgear "H_Cap_blk_Raven";



// Soldier4
_man4 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man4;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man4 addUniform "U_O_PilotCoveralls";
_man4 addVest "V_TacVest_khk";
_man4 addBackpack "B_Kitbag_rgr";
_man4 addMagazine "30Rnd_65x39_caseless_mag";
_man4 addWeapon "arifle_MX_GL_Hamr_pointer_F";
_man4 addMagazine "30Rnd_65x39_caseless_mag";
_man4 addMagazine "30Rnd_65x39_caseless_mag";
_man4 addHeadgear "H_Cap_blk_Raven";



// Soldier5
_man5 = _group createUnit ["C_man_polo_5_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man5;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man5 addUniform "U_O_PilotCoveralls";
_man5 addVest "V_TacVest_khk";
_man5 addBackpack "B_Kitbag_rgr";
_man5 addMagazine "30Rnd_65x39_caseless_mag";
_man5 addWeapon "arifle_MX_GL_Hamr_pointer_F";
_man5 addMagazine "30Rnd_65x39_caseless_mag";
_man5 addMagazine "30Rnd_65x39_caseless_mag";
_man5 addHeadgear "H_Cap_blk_Raven";



// Soldier6
_man6 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) - 30, 0], [], 1, "Form"];
removeAllAssignedItems _man6;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man6 addUniform "U_O_PilotCoveralls";
_man6 addVest "V_TacVest_khk";
_man6 addBackpack "B_Kitbag_rgr";
_man6 addWeapon "arifle_MX_GL_Hamr_pointer_F";
_man6 addMagazine "30Rnd_65x39_caseless_mag";
_man6 addMagazine "30Rnd_65x39_caseless_mag";
_man6 addHeadgear "H_Cap_blk_Raven";



_leader = leader _group;
{
	_x spawn refillPrimaryAmmo;
	_x call setMissionSkill;
	_x addRating 9999999;
	_x addEventHandler ["Killed", server_playerDied];
} forEach units _group;

[_group, _pos, "LandVehicle"] call defendArea;