/// @description 
/// GMLive setup
if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters

if (state == "crash") {
	log("Tile crash animation ended, pausing on last frame");
	// Pause on the last (empty) frame
	image_speed = 0;
	image_index = image_number - 1;
}