// Step Event of an object that controls spawning and movement towards obj_hero



// Decrease the timer every step
if (spawn_timer > 0) {
    spawn_timer--;
}

// Check if it's time to spawn a new object and if the maximum number of instances has not been reached
if (spawn_timer <= 0 && instance_number(obj_target) < max_instances) {
    // Get the dimensions and position of the camera view
    var view_left = view_xview[0];
    var view_right = view_xview[0] + view_wview[0];
    var view_top = view_yview[0];
    var view_bottom = view_yview[0] + view_hview[0];

    // Randomly determine the side from which the object will spawn
    side = irandom(3); // 0: top, 1: right, 2: bottom, 3: left

    // Spawn the object at a random position outside of the camera view
   

    switch (side) {
        case 0: // Top side
            x_spawn = random_range(view_left - buffer, view_right + buffer);
            y_spawn = view_top - buffer;
            break;
        case 1: // Right side
            x_spawn = view_right + buffer;
            y_spawn = random_range(view_top - buffer, view_bottom + buffer);
            break;
        case 2: // Bottom side
            x_spawn = random_range(view_left - buffer, view_right + buffer);
            y_spawn = view_bottom + buffer;
            break;
        case 3: // Left side
            x_spawn = view_left - buffer;
            y_spawn = random_range(view_top - buffer, view_bottom + buffer);
            break;
    }

    // Create the object at the calculated position
    var new_instance = instance_create_layer(x_spawn, y_spawn, "Instances", obj_target);
    
    // Set the new instance's parent to obj_spawned_object so it can be tracked
    new_instance.parent = obj_target;

    // Reset the timer to the delay value
    spawn_timer = spawn_delay;
	

}

// Check for collisions with obj_ammo and destroy instances






// Move obj_target towards obj_hero
var direction_to_hero = point_direction(x, y, obj_hero.x, obj_hero.y);
var new_x = x + lengthdir_x(move_speed, direction_to_hero);
var new_y = y + lengthdir_y(move_speed, direction_to_hero);
x = new_x;
y = new_y;
