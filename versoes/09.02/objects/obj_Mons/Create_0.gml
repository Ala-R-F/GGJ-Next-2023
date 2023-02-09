randomize();

//Define se o monstro já foi conectado à corda
parented = pointer_null;

//Lynx: Define o tamanho base do Monstro
Size = 2

//Lynx: Definindo os valores de SEat e SIdle para não ter crash
SEat = Spr_Monster_3_Eat
SIdle = Spr_Monster_3_Idle

//Lynx: Define quando o Monstro vai fazer a animação de comer e quando vai acabar
Eat = false

//Lynx: Determina o sprite
Msprite = round(random_range(1,4))

if (Msprite == 1){
	SEat = Spr_Monster_1_Eat
	SIdle = Spr_Monster_1_Idle
}

if (Msprite == 3){
	SEat = Spr_Monster_3_Eat
	SIdle = Spr_Monster_3_Idle
}

sprite_index = SIdle

