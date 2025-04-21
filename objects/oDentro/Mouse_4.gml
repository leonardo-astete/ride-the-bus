var eleccion = "mayor";

with (Object2) {
    sprite_index = carta_oculta_sprite; // Revelar la carta azul

    if (global.valor_carta2 > global.valor_carta1) {
        show_debug_message("🎉 ¡Correcto! Era MAYOR");
        global.juego2_ganado = true;

        with (oMayor) instance_destroy();
        with (oMenor) instance_destroy();
        with (oFondoNegroJ2) instance_destroy();
    } else {
        show_debug_message("❌ Fallaste... era MENOR");
        game_restart(); // Reiniciar si fallás
    }
}
