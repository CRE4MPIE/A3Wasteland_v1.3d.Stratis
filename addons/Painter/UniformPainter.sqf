// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: UniformPainter.sqf
//	@file Author: LouD
//	@file Created: 14-02-2015

_texDir = "client\images\vehicleTextures\";
_paint = _this select 0;

_price = 1500;
_playerMoney = player getVariable "cmoney";

if (_price > _playerMoney) exitWith
	{
		_text = format ["Not enough money! You need $%1 to paint your clothes.",_price];
		[_text, 10] call mf_notify_client;
		playSound "FD_CP_Not_Clear_F";
	};

if (_price < _playerMoney) then	
	{
		player setVariable["cmoney",(player getVariable "cmoney")-_price,true];
		_text = format ["You paid $%1 to paint your clothes.",_price];
		[_text, 10] call mf_notify_client;		
		player spawn fn_savePlayerData;
	};

if (_paint == 0) then {
player setObjectTextureGlobal  [0, _texDir + "bloodshot.paa"]; backpackContainer player setObjectTextureGlobal  [0, _texDir + "bloodshot.paa"];
};

if (_paint == 1) then {
player setObjectTextureGlobal  [0, _texDir + "swamp.paa"]; backpackContainer player setObjectTextureGlobal  [0, _texDir + "swamp.paa"];
};

if (_paint == 2) then {
player setObjectTextureGlobal  [0, _texDir + "urban.paa"]; backpackContainer player setObjectTextureGlobal  [0, _texDir + "urban.paa"];
};

if (_paint == 3) then {
player setObjectTextureGlobal  [0, _texDir + "camo_orange.paa"]; backpackContainer player setObjectTextureGlobal  [0, _texDir + "camo_orange.paa"];
};

if (_paint == 4) then {
player setObjectTextureGlobal  [0, _texDir + "digi_wood.paa"]; backpackContainer player setObjectTextureGlobal  [0, _texDir + "digi_wood.paa"];
};

if (_paint == 5) then {
player setObjectTextureGlobal  [0, _texDir + "woodland.paa"]; backpackContainer player setObjectTextureGlobal  [0, _texDir + "woodland.paa"];
};

if (_paint == 6) then {
player setObjectTextureGlobal  [0, _texDir + "hellokitty.paa"]; backpackContainer player setObjectTextureGlobal  [0, _texDir + "hellokitty.paa"];
};

if (_paint == 7) then {
player setObjectTextureGlobal  [0, _texDir + "leopard.paa"]; backpackContainer player setObjectTextureGlobal  [0, _texDir + "leopard.paa"];
};

if (_paint == 8) then {
player setObjectTextureGlobal  [0, _texDir + "nazi.paa"]; backpackContainer player setObjectTextureGlobal  [0, _texDir + "nazi.paa"];
};