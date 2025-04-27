draw_set_color(c_white);
draw_set_font(fntCurrentMoney);
draw_set_halign(fa_center);

// Texto según idioma
var text_label = (global.idioma == "es") ? "Billetera: $" : "Wallet: $";

draw_text(x, y, text_label + string(global.money));
