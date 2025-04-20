if (!activar_juego3) exit; // Dormido hasta que se lo active

// Mover automáticamente si ganaste el juego 1
if (global.juego1_ganado && !is_moving) {
    target_x = 420;
    target_y = 320;
    is_moving = true;
}
	

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