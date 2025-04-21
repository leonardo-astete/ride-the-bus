if (!activar_juego3) exit; // Dormido hasta que se lo active

// Mover automáticamente si ganaste el juego 2
if (global.juego2_ganado && !is_moving) {
    target_x = 420;
    target_y = 320;
    is_moving = true;
}

// Movimiento suave
if (is_moving) {
    x = lerp(x, target_x, 0.1);
    y = lerp(y, target_y, 0.1);

    if (point_distance(x, y, target_x, target_y) < 1) {
        x = target_x;
        y = target_y;
        is_moving = false;
    }
}

// Generar la carta solo una vez cuando ya no se está moviendo
if (!is_moving && !carta_generada) {
    // Elegir pinta
    var pintas = ["sClubs_", "sDiamonds_", "sHearts_", "sSpades_"];
    var indice_pinta = irandom(array_length(pintas) - 1);
    var prefijo = pintas[indice_pinta];

    // Elegir número del 1 al 13
    var numero = irandom_range(1, 13);
	while (numero == global.valor_carta1 || numero == global.valor_carta2) {
    numero = irandom_range(1, 13);
}
    global.valor_carta3 = numero;

    var sufijo = (numero < 10) ? "0" + string(numero) : string(numero);
    var nombre_sprite = prefijo + sufijo;

    show_debug_message("🟡 Carta 3 generada: " + nombre_sprite + " (valor: " + string(numero) + ")");

    // Obtener sprite
    var sprite_id = asset_get_index(nombre_sprite);
    if (sprite_id != -1) {
        sprite_index = yellow_backing; // Mostrar dorso
        carta_oculta_sprite = sprite_id;
    } else {
        show_debug_message("❌ Sprite no encontrado: " + nombre_sprite);
    }

    carta_generada = true;
    timer = room_speed; // Esperar 1 segundo antes de mostrar botones
}

// Temporizador para mostrar botones después de 1 segundo
if (carta_generada && timer > 0) {
    timer -= 1;

    if (timer == 0 && !show_buttons) {
        show_buttons = true;

        instance_create_layer(0, 0, "Instances", oFondoNegroJ3);

        var dentro = instance_create_layer(271.8285, 96, "Instances", oDentro);
        dentro.image_xscale = 0.3936227;
        dentro.image_yscale = 0.3936226;

        var fuera = instance_create_layer(271.8285, 192, "Instances", oFuera);
        fuera.image_xscale = 0.3936227;
        fuera.image_yscale = 0.3936226;
    }
}
