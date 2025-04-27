actualizar_sprites();

function actualizar_sprites() {
    if (!variable_global_exists("idioma")) return;

    if (global.idioma == "es") {
        sprite_index = Settings_Es;
    } else {
        sprite_index = Settings_En;
    }
}
