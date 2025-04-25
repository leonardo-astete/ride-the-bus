var eleccion = "dentro";

// Determinar los límites
var menor = min(global.valor_carta1, global.valor_carta2);
var mayor = max(global.valor_carta1, global.valor_carta2);

// Revelar carta y comparar
with (Object3) {
    sprite_index = carta_oculta_sprite;

    if (global.valor_carta3 > menor && global.valor_carta3 < mayor) {
		global.money += global.betAmount * 4;
        show_debug_message("🎉 ¡Correcto! Estaba DENTRO");
        global.juego3_ganado = true;
		
				// Iniciar Juego 3
		with (Object4) {
			activar_juego4 = true;
		}

        with (oDentro) instance_destroy();
        with (oFuera) instance_destroy();
        with (oFondoNegroJ3) instance_destroy();
    } else {
        show_debug_message("❌ Fallaste... era ROJA");
        instance_create_layer(0, 0, "Instances", oGameOver);
    }
}