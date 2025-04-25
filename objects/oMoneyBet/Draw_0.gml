draw_set_color(c_white);
draw_set_font(fntCurrentMoney); //
draw_set_halign(fa_center);
draw_text(x, y, "Billetera: $" + string(global.money));