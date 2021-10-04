/// @description 
/// GMLive setup
if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters

if (state == "appearing") {
	// End of appearing animation
	sprite_index = sprEnemy;
	image_index = 0;
	state = "normal"
} else if (state == "disappearing") {
	// End of disappearing animation
	//log("Enemy got away");
	instance_destroy();
} 