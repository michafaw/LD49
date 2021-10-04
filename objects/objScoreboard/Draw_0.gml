/// @description 
/// GMLive setup
if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters

draw_set_font(fntLucida30)

draw_set_halign(fa_center)
draw_set_valign(fa_top)

draw_set_color($66cc66); // hex $ggbbrr format I think
draw_text(room_width/2, 20, "Ghost Crabs of the Deep");

draw_set_font(fntLucida20)
draw_text(room_width/2, 60, "by Micha Faw");

draw_set_color($44aa44); // hex $ggbbrr format I think
draw_set_font(fntLucida20)
draw_text(room_width/2, 210, "Score: " + string(global.score));
draw_text(room_width/2, 100, "High Score: " + string(global.highScore));

draw_set_color($66cc66); // hex $ggbbrr format I think
draw_set_font(fntLucida20)
draw_text(room_width/2, 140, "Smash crabs! Break tiles!\nDig deeper!");