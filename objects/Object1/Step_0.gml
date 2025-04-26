if (is_moving) {
    // Movimiento suave hacia el objetivo
    x = lerp(x, target_x, 0.1);
    y = lerp(y, target_y, 0.1);
    
    // Si ya está muy cerca, fijar posición final
    if (point_distance(x, y, target_x, target_y) < 1) {
        x = target_x;
        y = target_y;
        is_moving = false;
		
		//Inicia el temporizador de 1 segundo
		timer = 10;
	}
}

else if (timer > 0) {
	timer -= 1;
	if (timer == 0 && !show_buttons) {
		show_buttons = true;
		
		// Crear franja negra de fondo (primero, para que quede atrás)
		instance_create_layer(0, 0, "Instances", oFondoNegro);
		
		//Crear botón rojo		
		var rojo = instance_create_layer(271.8285, 96, "Instances", oRojo);
        rojo.image_xscale = 0.3936227;
        rojo.image_yscale = 0.3936226;

        // Crear botón Negro
        var negro = instance_create_layer(271.8285, 192, "Instances", oNegro);
        negro.image_xscale =0.3936227;
        negro.image_yscale =0.3936226;
    }
}