if (!global.juego1_ganado) {
    exit; // Salir del código, no hace nada si no has ganado el Juego 1
}

// Solo si aún no está en movimiento
if (!is_moving) {
    target_x = 241;
    target_y = 320;
    is_moving = true;
}
