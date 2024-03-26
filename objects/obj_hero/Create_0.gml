/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor


acceleration = 2;
deceleration = 0.2;
horizontal_direction = 0;
vertical_direction = 0;
mov_friction = 0.5;
diagonal = 0;
max_speed = 5;

sprite[RIGHT] = spr_hero_right;
sprite[LEFT] = spr_hero_left;
sprite[UP] = spr_hero_top;
sprite[DOWN] = spr_hero_down;
//sprite[UP_LEFT] = spr_hero_top_left;
//sprite[DOWN_LEFT] = spr_hero_bot_left;
//sprite[UP_RIGHT] = spr_hero_top_right;
//sprite[DOWN_RIGHT] = spr_hero_bot_right;


face = UP;
direction = 0;

cooldown_time = 30;
cooldown_time_const = 30;

x_speed = 0;
y_speed = 0;

hp = 100;
regen = 0.1;


game_center_x = view_wview[0] / 2 + view_xview[0];
game_center_y = view_hview[0] / 2 + view_yview[0];
