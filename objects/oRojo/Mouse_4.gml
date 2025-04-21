var eleccion = "rojo";

with (Object1) {
    Object1.sprite_index = Object1.carta_oculta_sprite;

    if (Object1.color_carta == "rojo") {
        global.pesos += 100;
        show_debug_message("🎉 ¡Correcto! Era ROJA");

        global.juego1_ganado = true; // ✅ SOLO AQUÍ
		
		 // ✅ Activar juego 2 y marcar como ganado
        global.juego1_ganado = true;

        with (Object2) {
            activar_juego2 = true;
        }

        // ✅ Eliminar botones y fondo
        with (oRojo) instance_destroy();
        with (oNegro) instance_destroy();
        with (oFondoNegro) instance_destroy();
    } else {
        global.pesos -= 100;
        show_debug_message("❌ Fallaste... era NEGRA");
        game_restart();
    }
}
