// Ajusta la altura de la franja según lo que marcaste
var altura = 200;
var y_inicio =80;
draw_self(); // aunque no tenga sprite, evita errores de orden

draw_set_alpha(0.25);
draw_set_color(c_black);
draw_rectangle(0, y_inicio, display_get_width(), y_inicio + altura, false);
draw_set_alpha(1);