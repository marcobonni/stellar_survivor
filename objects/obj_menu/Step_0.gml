/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor



up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
space_key = keyboard_check_pressed(vk_space);


	op_length = array_length(option[menu_level]);

pos -= up_key;
pos += down_key;

if pos >= op_length {
	pos = 0;
}
if pos < 0 {
	pos = op_length - 1;
}

if (space_key) {
	
	var _sml = menu_level;
	
	switch(menu_level){
		case 0 :
				switch (pos) {
					case 0: 
					room_goto(Room1);
					break;
					case 1:
					menu_level = 1;
					break;
					case 2:
					game_end(0);
					break;
	}
		break;
		case 1:
			switch (pos) {
					case 0: 
					menu_level= 3;
					break;
					case 1:
					menu_level= 2
					switch (pos) {
					case 0: 
					if (keyboard_check(vk_left)) {
					    brightness_level -= 0.1;
					} else if (keyboard_check(vk_right)) {
					    brightness_level += 0.1;
					}
					global.alpha = brightness_level;
					break;
					case 1:
					break;
	}
	}
		
	if _sml != menu_level {pos = 0};
	
	op_length = array_length(option[menu_level]);
}
}
