if (is_moving) {
    // Movimiento suave hacia el objetivo
    x = lerp(x, target_x, 0.1);
    y = lerp(y, target_y, 0.1);
    
    // Si ya está muy cerca, fijar posición final
    if (point_distance(x, y, target_x, target_y) < 1) {
        x = target_x;
        y = target_y;
        is_moving = false;
	}
}