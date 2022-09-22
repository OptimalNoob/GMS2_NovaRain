/// @description Insert description here
// You can write your code in this editor
if(hp<=0){
	PlayerKills++;
	PlayerPoints += score_points;
	instance_destroy();
};

if(instance_exists(oPlayer)){
	if(place_meeting_3D(xmov,ymov,zmov, oPlayer) && !oPlayer.iframes){
		oPlayer.iframes = true;
		oPlayer.alarm[1] = IFrameDur;
		PlayerHP--;
	};
};
