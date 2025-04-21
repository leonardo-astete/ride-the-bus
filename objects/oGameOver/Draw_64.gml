// Fondo negro con opacidad 25%
draw_set_alpha(0.25);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

// Dibujar el sprite sLose en x160 y32 con escala personalizada
var scale_x = 0.3600125;
var scale_y = 0.3750131;

draw_sprite_ext(sLose, 0, 160, 32, scale_x, scale_y, 0, c_white, 1);
