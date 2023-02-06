x = mouse_x;
y = mouse_y;
lagSteps = 16;
global.change = true;

global.localX = [];
global.localY = [];

repeat (10){
	array_push(global.localX, x);
	array_push(global.localY, y);
}

offset = 1;

/*
host = self;
next_rope = instance_create_layer(x, y + offset, obj_Rope);
attach = physics_joint_distance_create(host, next_rope, host.x, host.y, next_rope.x, next_rope.y, false);

with(next_rope){
	parent = other.id;
}

repeat (5) {
	offset += 64;
	last_rope = next_rope;
	next_rope = instance_create_layer(x, y + offset, obj_Rope);
	conn = physics_joint_distance_create(last_rope, next_rope, last_rope.x, last_rope.y, next_rope.x, next_rope.y, false);
	
	with(next_rope){
		parent = other.last_rope;
	}
}
*/