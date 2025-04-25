// Solo inicializar dinero si aún no existe (para no reiniciar al perder)
if (!variable_global_exists("money")) {
    global.money = 1000;
}

// Siempre reiniciar estos al entrar a Room_bet
global.betAmount = 0;
