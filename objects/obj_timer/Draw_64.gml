/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

// Check if the game is not paused


draw_set_font(fnt_main2); // Set the font for the timer text
draw_set_color(c_white); // Set the color for the timer text

minutes = string(floor(timer / room_speed / 60)); // Calculate minutes
seconds = string(timer div room_speed mod 60); // Calculate seconds

if (string_length(seconds) == 1) {
    seconds = "0" + seconds; // Add leading zero if seconds is a single digit
}
var timer_text = minutes + ":" + seconds; // Format timer text as mm:ss

// Get the width and height of the timer text
var text_width = string_width(timer_text);
var text_height = string_height(timer_text);

// Calculate the position to draw the text at the top center of the screen
var draw_x = (view_wview[0] - text_width) / 2;
var draw_y = 20; // Adjust as needed for vertical positioning



// Draw the timer text

draw_text(draw_x, draw_y, minutes + ":" + seconds);


