var eleccion = "negro";

with (Object1) {
Object1.sprite_index = Object1.carta_oculta_sprite;

if (Object1.color_carta == "negro") {
    pesos += 100;
    show_debug_message("🎉 ¡Correcto! Era NEGRA");
	// ✅ Destruir ambos botones
		with (oRojo) instance_destroy();
		with (oNegro) instance_destroy();
		with (oFondoNegro) instance_destroy();
} 
	else 
		{
		    pesos -= 100;
		    show_debug_message("❌ Fallaste... era ROJA");
			//Si pierdo
			game_restart();//Reiniciar todo
		}
}