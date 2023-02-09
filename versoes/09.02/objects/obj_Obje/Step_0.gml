//Lynx: O objeto se destroy e cria fragmentos

if (place_meeting(x,y,obj_Mons))
{
	//Lynx: O objeto cria tres fragmentos
	//Lynx: O objeto escolhe dois sprites randomicos para dois dos fragmentos
	var obj = instance_create_layer(x,y,layer,obj_Rubl)
	with obj { sprite_index = choose(Spr_Ruble_1,Spr_Ruble_2,Spr_Ruble_3) }
	
	//Lynx: O objeto cria um fragmento que tem um sprite especifico baseado no objeto original
	var obj2 = instance_create_layer(x + random_range(1,10),y + random_range(1,10),layer,obj_Rubl)
	with obj2 { sprite_index = other.SRubl }
	
	instance_destroy()
}

if (place_meeting(x,y,obj_Player))
{
	//Lynx: O objeto cria tres fragmentos
	//Lynx: O objeto escolhe dois sprites randomicos para dois dos fragmentos
	var obj = instance_create_layer(x,y,layer,obj_Rubl)
	with obj { sprite_index = choose(Spr_Ruble_1,Spr_Ruble_2,Spr_Ruble_3) }
	
	//Lynx: O objeto cria um fragmento que tem um sprite especifico baseado no objeto original
	var obj2 = instance_create_layer(x + random_range(1,10),y + random_range(1,10),layer,obj_Rubl)
	with obj2 { sprite_index = other.SRubl }
	
	//Lynx: O objeto da dano ao player
	obj_Player.Hp -= 1
	
	instance_destroy()
}
	
	x -= 3