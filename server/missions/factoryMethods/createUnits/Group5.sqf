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
_leader addUniform "U_B_CTRG_1";
_leader addVest "V_PlateCarrierGL_rgr";
_leader addBackpack "B_AssaultPack_khk";
_leader addMagazine "150Rnd_762x54_Box";
_leader addWeapon "LMG_Zafir_F";
_leader addPrimaryWeaponItem "optic_Arco";
_leader addWeapon "launch_RPG32_F";
_leader addMagazine "RPG32_F";
_leader addMagazine "150Rnd_762x54_Box";
_leader addMagazine "150Rnd_762x54_Box";
_leader addHeadgear "H_Watchcap_blk";
_leader addGoggles "G_Bandanna_tan";



// Soldier2
_man2 = _group createUnit ["C_man_polo_2_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _man2;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man2 addUniform "U_B_CTRG_1";
_man2 addVest "V_PlateCarrierGL_rgr";
_man2 addBackpack "B_AssaultPack_khk";
_man2 addMagazine "150Rnd_762x54_Box";
_man2 addWeapon "LMG_Zafir_F";
_man2 addPrimaryWeaponItem "optic_Arco";
_man2 addMagazine "150Rnd_762x54_Box";
_man2 addWeapon "launch_RPG32_F";
_man2 addMagazine "RPG32_F";
_man2 addHeadgear "H_Watchcap_blk";
_man2 addGoggles "G_Bandanna_tan";



// Soldier3
_man3 = _group createUnit ["C_man_polo_3_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
removeAllAssignedItems _man3;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man3 addUniform "U_B_CTRG_1";
_man3 addVest "V_PlateCarrierGL_rgr";
_man3 addBackpack "B_AssaultPack_khk";
_man3 addMagazine "150Rnd_762x54_Box";
_man3 addWeapon "LMG_Zafir_F";
_man3 addPrimaryWeaponItem "optic_Arco";
_man3 addMagazine "150Rnd_762x54_Box";
_man3 addMagazine "150Rnd_762x54_Box";
_man3 addHeadgear "H_Watchcap_blk";
_man3 addGoggles "G_Bandanna_tan";



// Soldier4
_man4 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man4;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man4 addUniform "U_B_CTRG_1";
_man4 addVest "V_PlateCarrierGL_rgr";
_man4 addBackpack "B_AssaultPack_khk";
_man4 addMagazine "150Rnd_762x54_Box";
_man4 addWeapon "LMG_Zafir_F";
_man4 addPrimaryWeaponItem "optic_Arco";
_man4 addMagazine "150Rnd_762x54_Box";
_man4 addMagazine "150Rnd_762x54_Box";
_man4 addHeadgear "H_Watchcap_blk";
_man4 addGoggles "G_Bandanna_tan";



// Soldier5
_man5 = _group createUnit ["C_man_polo_5_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man5;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man5 addUniform "U_B_CTRG_1";
_man5 addVest "V_PlateCarrierGL_rgr";
_man5 addBackpack "B_AssaultPack_khk";
_man5 addMagazine "150Rnd_762x54_Box";
_man5 addWeapon "LMG_Zafir_F";
_man5 addPrimaryWeaponItem "optic_Arco";
_man5 addMagazine "150Rnd_762x54_Box";
_man5 addMagazine "150Rnd_762x54_Box";
_man5 addHeadgear "H_Watchcap_blk";
_man5 addGoggles "G_Bandanna_tan";



// Soldier6
_man6 = _group createUnit ["C_man_polo_4_F", [_pos select 0, (_pos select 1) - 30, 0], [], 1, "Form"];
removeAllAssignedItems _man6;
sleep 0.1; // Without this delay, headgear doesn't get removed properly
_man6 addUniform "U_B_CTRG_1";
_man6 addVest "V_PlateCarrierGL_rgr";
_man6 addBackpack "B_AssaultPack_khk";
_man6 addWeapon "LMG_Zafir_F";
_man6 addPrimaryWeaponItem "optic_Arco";
_man6 addMagazine "150Rnd_762x54_Box";
_man6 addMagazine "150Rnd_762x54_Box";
_man6 addHeadgear "H_Watchcap_blk";
_man6 addGoggles "G_Bandanna_tan";


_leader = leader _group;
{
	_x spawn refillPrimaryAmmo;
	_x call setMissionSkill;
	_x addRating 9999999;
	_x addEventHandler ["Killed", server_playerDied];
} forEach units _group;

[_group, _pos, "LandVehicle"] call defendArea;