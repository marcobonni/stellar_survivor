/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor






// Movement
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_spacebar = keyboard_check((vk_space));
// Initialize movement direction


//if (key_left && key_up) {
//    x_speed -= acceleration;
//    y_speed -= acceleration;
//    face = UP_LEFT;
//    direction = 45;
//} else if (key_left && key_down) {
//    x_speed -= acceleration;
//    y_speed += acceleration;
//    face = DOWN_LEFT;
//    direction = 135;
//} else if (key_right && key_up) {
//    x_speed += acceleration;
//    y_speed -= acceleration;
//    face = UP_RIGHT;
//    direction = 315;
//} else if (key_right && key_down) {
//    x_speed += acceleration;
//    y_speed += acceleration;
//    face = DOWN_RIGHT;
//    direction = 225;
 if (key_right) {
    x_speed += acceleration;
    face = RIGHT;
    direction = 90;
} else if (key_up) {
    y_speed -= acceleration;
    face = UP;
    direction = 0;
} else if (key_down) {
    y_speed += acceleration;
    face = DOWN;
    direction = 180;
}  else if (key_left) {
    x_speed -= acceleration;
    face = LEFT;
    direction = 270;
}



sprite_index = sprite[face];

if (!key_left && !key_right) {
    // Gradually reduce x_speed toward zero
    if (x_speed != 0) {
        x_speed -= sign(x_speed) * deceleration;
        // Ensure x_speed reaches zero to stop gradually
        if (sign(x_speed) != sign(x_speed - sign(x_speed) * deceleration)) {
            x_speed = 0;
        }
    }
}


if (!key_up && !key_down) {
    // Gradually reduce y_speed toward zero
    if (y_speed != 0) {
        y_speed -= sign(y_speed) * deceleration;
        // Ensure y_speed reaches zero to stop gradually
        if (sign(y_speed) != sign(y_speed - sign(y_speed) * deceleration)) {
            y_speed = 0;
        }
    }
}

if (keyboard_check(vk_anykey)){
	if (x_speed != 0 && y_speed!= 0) {
		  x_speed -= sign(x_speed) * deceleration;
        // Ensure x_speed reaches zero to stop gradually
        if (sign(x_speed) != sign(x_speed - sign(x_speed) * deceleration)) {
            x_speed = 0;
        }
		y_speed -= sign(y_speed) * deceleration;
        // Ensure y_speed reaches zero to stop gradually
        if (sign(y_speed) != sign(y_speed - sign(y_speed) * deceleration)) {
            y_speed = 0;
        }
	}
}


if (cooldown_time > 0) {
	cooldown_time--;
}

if (key_spacebar && cooldown_time <= 0) {
	 var inst_x = x;
	 var inst_y = y;
	
      var inst = instance_create_layer(inst_x, inst_y, "Instances", obj_ammo);
    // Calculate position offsets based on ship's direction
     switch (face) {
        case UP:
            inst_y += 10;
			inst_x += 10;
            inst.sprite_index = spr_missile_top;
            inst.direction = 90; // Aimed upwards
            break;
        case LEFT:
            inst_x -= 10;
            inst.sprite_index = spr_missile_left;
            inst.direction = 180; // Aimed left
            break;
        case RIGHT:
            inst_x += 10;
            inst.sprite_index = spr_missile_right;
            inst.direction = 0; // Aimed right
            break;
        case DOWN:
            inst_y += 10;
            inst.sprite_index = spr_missile_down;
            inst.direction = 270; // Aimed downwards
            break;
    }
    
	  // Set the speed and direction of the projectile to match ship's speed and direction
    inst.speed = 10; // Set the speed of the projectile (adjust as needed)
	cooldown_time = cooldown_time_const;
}


x_speed = clamp(x_speed, -max_speed, max_speed);
y_speed = clamp(y_speed, -max_speed, max_speed);


x += x_speed;
y += y_speed;

depth = -bbox_bottom;
 


