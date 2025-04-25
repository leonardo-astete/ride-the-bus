var eleccion = "menor";

with (Object2) {
    sprite_index = carta_oculta_sprite; // Revelar la carta azul

    if (global.valor_carta2 < global.valor_carta1) {
		global.money += global.betAmount * 3;
        show_debug_message("🎉 ¡Correcto! Era MENOR");
        global.juego2_ganado = true;
		
		// Iniciar Juego 3
		with (Object3) {
			activar_juego3 = true;
		}

        with (oMayor) instance_destroy();
        with (oMenor) instance_destroy();
        with (oFondoNegroJ2) instance_destroy();
    } else {
        show_debug_message("❌ Fallaste... era ROJA");
        instance_create_layer(0, 0, "Instances", oGameOver);
    }
}
