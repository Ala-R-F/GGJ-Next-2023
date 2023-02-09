if(parent != -1){
	//No momento apenas uma linha está sendo desenhada, ao invés das sprites
	draw_line_width(x,y, parent.x, parent.y, 3);
	//draw_self();
}

//Liga o teste de física
physics_draw_debug();