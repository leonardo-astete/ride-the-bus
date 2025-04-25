//Iniciar juego
if (active) {
    global.betAmount = 500;
    
    //Eliminar billetes de la pantalla
    with (o100) instance_destroy();
    with (o150) instance_destroy();
    with (o300) instance_destroy();
    with (o500) instance_destroy();
    room_goto(Room1);
}