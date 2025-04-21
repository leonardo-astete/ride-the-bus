var eleccion = "dentro";

// Determinar los límites
var menor = min(global.valor_carta1, global.valor_carta2);
var mayor = max(global.valor_carta1, global.valor_carta2);

// Revelar carta y comparar
with (Object3) {
    sprite_index = carta_oculta_sprite;

    if (global.valor_carta3 > menor && global.valor_carta3 < mayor) {
		global.pesos += 100;
        show_debug_message("🎉 ¡Correcto! Estaba DENTRO");
        global.juego3_ganado = true;

        with (oDentro) instance_destroy();
        with (oFuera) instance_destroy();
        with (oFondoNegroJ3) instance_destroy();
    } else {
		global.pesos -= 100;
        show_debug_message("❌ Fallaste... estaba FUERA");
        game_restart();
    }
}