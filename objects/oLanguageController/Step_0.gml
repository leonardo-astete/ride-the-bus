if (global.idioma != global.idiomaAnterior) {
    event_user(0); // Llama a un evento que vamos a crear
    global.idiomaAnterior = global.idioma;
}