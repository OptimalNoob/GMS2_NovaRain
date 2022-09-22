/// @desc
// You can write your code in this editor
if(zmov<-256){
	instance_destroy();
}

if(alarm[0] == -1){
	x = xmov;
	y = ymov + cube_height / 2
	depth = zmov;
};

if(place_meeting_3D(xmov,ymov,zmov, oPlayer) && !oPlayer.iframes){
	oPlayer.iframes = true;
	oPlayer.alarm[1] = IFrameDur;
	PlayerHP--;
};