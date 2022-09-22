/// @desc
if(mouse_select()){
	switch(room){
		case rCredits: case rHowTo:
			room_goto(rTitle);
		break
	};
};