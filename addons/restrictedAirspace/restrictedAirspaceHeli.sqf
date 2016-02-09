/*
	@file Version: 0.2
	@file Name: restrictedAirspaceHeli.sqf
	@file Contributions from Bistudio forum
	@Edit by CRE4MPIE
	@file Created: 7/2/2016
*/
titleText ["You are entering restricted air space, please reduce altitude to below 250m!", "PLAIN DOWN", 3];
playSound3D ["A3\Sounds_F\sfx\alarmcar.wss", player]; 
sleep 5;
titleText ["You have less than 30 seconds to comply...", "PLAIN DOWN", 3];
playSound3D ["A3\Sounds_F\sfx\alarmcar.wss", player]; 
sleep 15;
titleText ["You now have less than 10 seconds to reduce your altitude!", "PLAIN DOWN", 3];
playSound3D ["A3\Sounds_F\sfx\alarmcar.wss", player]; 
sleep 10;
titleText ["Reduce Altitude immediately!", "PLAIN DOWN", 3];
playSound3D ["A3\Sounds_F\sfx\alarmcar.wss", player]; 
sleep 5;
playsound "explo1";
titleText ["Your flight systems have been disabled!", "PLAIN DOWN", 3];
vehicle player setFuel 0;
