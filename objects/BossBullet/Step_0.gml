/// @desc
zmov -= bull_speed;

if(zmov < -100) instance_destroy();

move_towards_point(shotX,shotY, bull_speed/4)

xmov = x
ymov = y

var hit = place_meeting_3D(xmov,ymov,zmov, oPlayer);
if(hit != noone){
	if(oPlayer.iframes == false){
		oPlayer.iframes = true;
		oPlayer.alarm[1] = IFrameDur;
		PlayerHP--;
		instance_destroy();
	};
};