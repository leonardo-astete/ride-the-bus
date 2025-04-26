//Iniciar juego
if (active) {
    global.betAmount = 150;
    
    //Eliminar billetes de la pantalla
    with (o100) instance_destroy();
    with (o150) instance_destroy();
    with (o300) instance_destroy();
    with (o500) instance_destroy();
    room_goto(Room1);
}

//Sonido
audio_play_sound(Menu, 1, false);
audio_sound_gain(Menu, 0.3, 0); // 🔊 Volumen al 30%