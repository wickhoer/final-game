draw_self();


draw_set_color(c_white); 

draw_text(x - 60, y - 200, "Press 'W' to jump\nPress 'S' to duck\nCollect portals to get to the underworld");

if (variable_global_exists("maxScore")) {
    draw_text(x - 60, y - 100, "Highest Score: " + string(global.maxScore));
} else {
    draw_text(x - 60, y - 100, "Highest Score: N/A");
}

draw_text(x + 50, y + 100, "back to main menu");