//JUEGO 1

// Solo si aún no está en movimiento
if (!is_moving) {
    target_x = 64;
    target_y = 288;
    is_moving = true;
}


// Este código se ejecuta cuando ocurre el evento de "click"

//Elegir pinta

var pintas = ["sClubs_", "sDiamonds_", "sHearts_", "sSpades_"];
var indice_pinta = irandom(array_length(pintas) - 1);
var prefijo = pintas [indice_pinta];

//Elegir carta del 1 al 13
var numero = irandom_range(1, 13);
var sufijo = (numero < 10) ? "0" + string(numero) : string(numero);
var nombre_sprite = prefijo+sufijo;

show_debug_message("Carta aleatoria: " + nombre_sprite);

//Obtener el sprite
var sprite_id = asset_get_index(nombre_sprite);
show_debug_message("ID del sprite: " + string(sprite_id));

if (sprite_id != -1) {
    sprite_index = sprite_id;
} else {
    show_debug_message("❌ Sprite no encontrado: " + nombre_sprite);
}

//Detectar color de carta

if (string_starts_with(nombre_sprite, "sHearts_") || string_starts_with(nombre_sprite, "sDiamonds_")) {
    color_carta = "rojo";
} else {
    color_carta = "negro";
}

// Guardar sprite real pero no mostrarlo aún
carta_oculta_sprite = asset_get_index(nombre_sprite);

// Determinar color sin mostrar sprite todavía
if (string_starts_with(nombre_sprite, "sHearts_") || string_starts_with(nombre_sprite, "sDiamonds_")) {
    color_carta = "rojo";
} else {
    color_carta = "negro";
}

// Mostrar dorso
sprite_index = red_backing;

