/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
//Step

// Step Event
if (keyboard_check_pressed(vk_escape)) {
    if (!global.game_pause) {
        instance_deactivate_layer("Instances");
        instance_deactivate_object(obj_hero);
    } else {
        instance_activate_layer("Instances");
        instance_activate_object(obj_hero);
    }
    global.game_pause = !global.game_pause; // Toggle game_pause state
}
