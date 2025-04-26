// ⚠️ Nada de esto pasa hasta que se active
if (!activar_juego2) exit;


// Mover automáticamente si ganaste el juego 1
if (global.juego1_ganado && !is_moving) {
    target_x = 241;
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

// Solo genera la carta una vez, cuando ya no se está moviendo
if (!is_moving && !carta_generada) {
    // Elegir pinta
    var pintas = ["sClubs_", "sDiamonds_", "sHearts_", "sSpades_"];
    var indice_pinta = irandom(array_length(pintas) - 1);
    var prefijo = pintas[indice_pinta];

    // Elegir número del 1 al 13
    var numero = irandom_range(1, 13);
	while (numero == global.valor_carta1) {
    numero = irandom_range(1, 13);
}
    global.valor_carta2 = numero; // Guardar para comparar después

    var sufijo = (numero < 10) ? "0" + string(numero) : string(numero);
    var nombre_sprite = prefijo + sufijo;

    // Obtener el sprite
    var sprite_id = asset_get_index(nombre_sprite);
	show_debug_message("🔵 Carta 2 generada: " + string(nombre_sprite) + " (valor: " + string(numero) + ")");

    if (sprite_id != -1) {
        sprite_index = blue_backing; // Mostrar dorso primero
        carta_oculta_sprite = sprite_id; // Guardar sprite real
    } else {
        show_debug_message("❌ Sprite no encontrado: " + nombre_sprite);
    }

    carta_generada = true;

    //Inicia el temporizador de 1 segundo
		timer = 10;
}

//Botones

// Temporizador solo si la carta ya fue generada
if (carta_generada && timer > 0) {
    timer -= 1;

    if (timer == 0 && !show_buttons) {
        show_buttons = true;

        // Crear franja negra de fondo
        instance_create_layer(0, 0, "Instances", oFondoNegroJ2);

        // Crear botón Mayor
        var mayor = instance_create_layer(271.8285, 96, "Instances", oMayor);
        mayor.image_xscale = 0.3936227;
        mayor.image_yscale = 0.3936226;

        // Crear botón Menor
        var menor = instance_create_layer(271.8285, 192, "Instances", oMenor);
        menor.image_xscale = 0.3936227;
        menor.image_yscale = 0.3936226;
    }
}

