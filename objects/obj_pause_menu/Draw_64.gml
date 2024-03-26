/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor


if (!global.game_pause) { 
	instance_deactivate_object(obj_pause_menu)
	} else { instance_activate_object(obj_pause_menu) }

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
					
					break;
					case 1:
					
					break;
					case 2:
					break;
					case 3:
					menu_level = 0;
					break;
	}
	}
		
	if _sml != menu_level {pos = 0};
	
	op_length = array_length(option[menu_level]);
}
	




