function place_meeting_3D(_x,_y,_z,_inst){
	instIDs = ds_list_create();
	var instCount = instance_place_list(x,y,_inst,instIDs, true);	
	
	for(i=0;i<instCount;i++){
		if(_z > _inst.zmov - _inst.zbound && _z < _inst.zmov + _inst.zbound){
			var sentID = instIDs[|i]
			ds_list_destroy(instIDs)
			show_debug_message(_z)
			show_debug_message(_inst.zmov)
			show_debug_message(_inst.zbound)
			
			return sentID
		}		
	}
	
	ds_list_destroy(instIDs)
	return noone
};