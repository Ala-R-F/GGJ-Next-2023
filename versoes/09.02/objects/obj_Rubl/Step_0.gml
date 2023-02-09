/*Lynx: O código está incompleto, ainda não tem o mechanismo do objeto seguir o monstro
//Lynx: Determina se o objeto esta em serta distancia do Monstro daí ele o segue
if (collision_circle(x,y,20,obj_Mons,false,false))
{
	
}
*/

if (place_meeting(x,y,obj_Mons))
{
	obj_Mons.Size += 0.75
	obj_Mons.Eat = true
	
	instance_destroy()
}