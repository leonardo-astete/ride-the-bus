if (!instance_exists(oManager)) {
    instance_create_layer(0, 0, "Instances", oManager);
}
instance_destroy(); // Se elimina a sí mismo
