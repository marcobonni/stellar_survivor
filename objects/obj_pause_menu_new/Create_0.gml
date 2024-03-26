/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
//Create
global.game_pause = false;
text = "Game Paused";
blink_timer = 0;
blink_duration = 120;

width = 200;
height = 200;

pos = 0;

op_border = 16;
op_space = 32;

option[0, 0] = "start";
option[0, 1] = "settings";
option[0, 2] = "exit";

option[1, 0] = "Window Size";
option[1, 1] = "Brightness";
option[1, 2] = "Controls";
option[1, 3] = "Back";

option[2, 0] = "Yes";
option[2, 1] = "No";

op_length = 0;
menu_level = 0;


up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
space_key = keyboard_check_pressed(vk_space);





