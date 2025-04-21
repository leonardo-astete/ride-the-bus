var eleccion = "mayor";

with (Object2) {
    sprite_index = carta_oculta_sprite; // Revelar la carta azul

    if (global.valor_carta2 > global.valor_carta1) {
		global.pesos += 100;
        show_debug_message("🎉 ¡Correcto! Era MAYOR");
        global.juego2_ganado = true;
		
		// Iniciar Juego 3
		with (Object3) {
			activar_juego3 = true;
		}

        with (oMayor) instance_destroy();
        with (oMenor) instance_destroy();
        with (oFondoNegroJ2) instance_destroy();
    } else {
		global.pesos -= 100;
        show_debug_message("❌ Fallaste... era MENOR");
        instance_create_layer(0, 0, "Instances", oGameOver);
    }
}
