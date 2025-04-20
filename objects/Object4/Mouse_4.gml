if (!global.juego1_ganado) {
    exit; // Salir del código, no hace nada si no has ganado el Juego 1
}

// Solo si aún no está en movimiento
if (!is_moving) {
    target_x = 576;
    target_y = 288;
    is_moving = true;
}
