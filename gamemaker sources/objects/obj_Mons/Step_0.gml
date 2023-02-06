
if (global.change == true){
	x = global.localX[0];
	y = global.localY[0];
	array_delete(global.localX, 0, 1);
	array_delete(global.localY, 0, 1);
}


/*
if (mouse_x <= x + 16 && mouse_x >= x - 16 && mouse_y <= y + 16 && mouse_y >= y - 16) {
	speed = 1;
} else {
      motion_set(point_direction(x, y, mouse_x, mouse_y), 8);
};
*/