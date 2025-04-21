if (!activar_juego4) exit; // Dormido hasta que se lo active

// Movimiento automático cuando se activa el juego 4
if (global.juego3_ganado && !is_moving) {
    target_x = 576;
    target_y = 288;
    is_moving = true;
}

// Movimiento suave hacia la posición final
if (is_moving) {
    x = lerp(x, target_x, 0.1);
    y = lerp(y, target_y, 0.1);

    if (point_distance(x, y, target_x, target_y) < 1) {
        x = target_x;
        y = target_y;
        is_moving = false;
    }
}

// Generar carta (solo un As) una vez
if (!is_moving && !carta_generada) {
    var ases = ["sClubs_01", "sDiamonds_01", "sHearts_01", "sSpades_01"];
    var indice_aleatorio = irandom(array_length(ases) - 1);
    var nombre_sprite = ases[indice_aleatorio];

    show_debug_message("🟣 As generado: " + nombre_sprite);

    var sprite_id = asset_get_index(nombre_sprite);
    if (sprite_id != -1) {
        sprite_index = pink_backing; // Mostrar dorso
        carta_oculta_sprite = sprite_id;
        global.nombre_as_ganador = nombre_sprite; // Guardar para comparar luego
    } else {
        show_debug_message("❌ Sprite no encontrado: " + nombre_sprite);
    }

    carta_generada = true;
    timer = room_speed; // Esperar 1 segundo para mostrar botones
}

// Mostrar botones después de 1 segundo
if (carta_generada && timer > 0) {
    timer -= 1;

    if (timer == 0 && !show_buttons) {
        show_buttons = true;

        instance_create_layer(0, 0, "Instances", oFondoNegroJ4);

        var corazones = instance_create_layer(202.6301, 128, "Instances", oClubs);
        corazones.image_xscale =1.253353;
        corazones.image_yscale =1.253353;

        var picas = instance_create_layer(287.5327, 128, "Instances", oDiamonds);
        picas.image_xscale = 1.253353;
        picas.image_yscale = 1.253353;

        var diamantes = instance_create_layer(372.4353, 128, "Instances", oHearts);
        diamantes.image_xscale = 1.253353;
        diamantes.image_yscale = 1.253353;

        var treboles = instance_create_layer(457.3379, 128, "Instances", oSpades);
        treboles.image_xscale = 1.253353;
        treboles.image_yscale = 1.253353;
    }
}
