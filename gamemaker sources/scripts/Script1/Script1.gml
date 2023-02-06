// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function criarCorda(me){
	host = me;
	next_rope = instance_create_layer(x, y + offset, obj_Rope);
	attach = physics_joint_distance_create(host, next_rope, host.x, host.y, next_rope.x, next_rope.y, false);

	with(next_rope){
		parent = other.id;
	}

	repeat (5) {
		offset += 32;
		last_rope = next_rope;
		next_rope = instance_create_layer(x, y + offset, obj_Rope);
		conn = physics_joint_distance_create(last_rope, next_rope, last_rope.x, last_rope.y, next_rope.x, next_rope.y, false);
	
		with(next_rope){
			parent = other.last_rope;
		}
	}
}