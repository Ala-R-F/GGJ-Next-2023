//x = mouse_x;
//y = mouse_y;
//lagSteps = 16;
global.change = true;

global.localX = [];
global.localY = [];

//Lynx: Definindo a vida do player
Hp = 10

repeat (10){
	array_push(global.localX, x);
	array_push(global.localY, y);
}

offset = 8;// Talvez seja melhor com offset 1, a propriedade do primeiro
//offset não é muito clara

/*
host = self;

next_rope = instance_create_layer(x, y + offset, obj_Rope);
attach = physics_joint_rope_create(host, next_rope, host.x, host.y, next_rope.x, next_rope.y, 16, false);
//physics_joint_set_value(attach, phy_joint_damping_ratio, 1); //Elasticidade
//physics_joint_set_value(attach, phy_joint_frequency, 10); //Frequência de update


with(next_rope){
	parent = other.id;
}
*/

i = 0;
ropeLenght = 10;
repeat (ropeLenght) {
	offset += 8; //Tamanho da corda
	i += 1;
	if (i == 1) {
		last_rope = self;
	}
	else {
		last_rope = next_rope;
	}
	next_rope = instance_create_layer(x, y + offset, obj_Rope);
	conn = physics_joint_distance_create(last_rope, next_rope, last_rope.x, last_rope.y, next_rope.x, next_rope.y, false);
	//physics_joint_set_value(conn, phy_joint_damping_ratio, 1); //Elasticidade
	physics_joint_set_value(conn, phy_joint_frequency, 10); //Frequência de update


	with(next_rope){
		parent = other.last_rope;
	}
	
	if (i == ropeLenght){
		offset = 1;
		global.parented = next_rope;
	}
}



