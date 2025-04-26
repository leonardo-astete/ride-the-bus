// JUEGO 1
target_x = x;
target_y = y;
is_moving = false;
show_buttons = false;
timer = 0;

// Inicia el movimiento automáticamente
target_x = 64;
target_y = 288;
is_moving = true;

carta_oculta_sprite = -1;
color_carta = "";

depth = 101;

// Control de flujo
juego_actual = 1;

//Dinero actual
global.money -=global.betAmount;


carta2_sprite = -1;
carta2_valor = -1;
numero_elegido = -1; // este será el número que el jugador elija

//Asegura que al iniciar el juego, todavia no he ganado
global.juego1_ganado = false;