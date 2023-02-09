
if (global.change == true){
	x = global.localX[0];
	y = global.localY[0];
	array_delete(global.localX, 0, 1);
	array_delete(global.localY, 0, 1);
}

// Conecta o monstro com a ultima instancia de corda criada
if (global.parented != pointer_null){
	rope = global.parented;
	phy_position_x = rope.x;
	phy_position_y = rope.y-90;
	
	conMons = physics_joint_rope_create(rope, self, rope.x, rope.y-30, x, y, 8, false);
	with(self){
		parent = other.rope;
	}
	physics_joint_set_value(conMons, phy_joint_damping_ratio, 1); //Elasticidade
	physics_joint_set_value(conMons, phy_joint_frequency, 10); //Frequência de update
	
	//Retorna a conexão para null para não entrar no if novamente
	global.parented = pointer_null;
}


//Lynx: Determina o tamanho do monstro

image_xscale = Size/2
image_yscale = Size/2

//Lynx: Toca e para a animação de comer

if ((Eat == true) && (sprite_index == SIdle)) 
{
	sprite_index = SEat
}

