draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntTextBeat); // Font, size
draw_set_color(c_white);    // Color

// Texto según idioma
var text_label = (global.idioma == "es") ? "Elige tu apuesta" : "Choose your bet";

draw_text(x, y, text_label);
