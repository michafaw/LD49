/// @description 
/// GMLive setup
if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters

draw_self()
//if (tileID != noone)
	draw_text(x, y, string(tileID));