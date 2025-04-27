actualizar_sprites();

function actualizar_sprites() {
    if (!variable_global_exists("idioma")) return;

    if (global.idioma == "es") {
        sprite_index = Home_Es;
    } else {
        sprite_index = Home_En;
    }
}
