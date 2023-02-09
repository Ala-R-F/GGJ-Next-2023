
phy_position_x = mouse_x;
phy_position_y = mouse_y;
//direction = move_towards_point(x,y,4);

//ver problemas com codigo abaixo depois
if (mouse_x <= x + 16 && mouse_x >= x - 16 && mouse_y <= y + 16 && mouse_y >= y - 16) {
	speed = 1;
	global.change = false;
} else {
      motion_set(point_direction(x, y, mouse_x, mouse_y), 1);
	  x = mouse_x;
	  y = mouse_y;
	  array_push(global.localX, x);
	  array_push(global.localY, y);
	  global.change = true;
}
