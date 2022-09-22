function boss_timeline(_wave){
	switch(_wave){
		case 0:
			timeline_set(tlBoss01, 0, false);
		break;
		case 1:
			timeline_set(tlBoss02, 0, false);
		break;
		case 2:
			timeline_set(tlBoss03, 0, false);
		break;
		case 3:
			timeline_set(tlBoss04, 0, false);
		break;
		case 4:
			timeline_set(tlBoss05, 0, false);
		break;
		default: break;
	};
};