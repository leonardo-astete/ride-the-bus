depth = 10;

actualizar_sprites();

function actualizar_sprites() {
    if (!variable_global_exists("idioma")) return;

    if (global.idioma == "es") {
        sprite_index = Rojo;
    } else {
        sprite_index = Red;
    }
}
