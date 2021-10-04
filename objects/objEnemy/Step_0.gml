/// @description 
/// GMLive setup
if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters

if (state == "dead") {
	image_angle += deadHitRotationSpeed
	
	if ((bbox_left > room_width && bbox_right > room_width) ||
	    (bbox_left < 0 && bbox_right < 0)) {
			log("Destroying off-screen enemy");
			instance_destroy();
		}
} else if (state == "normal") {
	timeToLive--;
	if (timeToLive <= 0) {
		// Start disappearing (still tappable)
		state = "disappearing"
		sprite_index = sprEnemyDisappear;
		image_index = 0;
		image_speed = 1;
		
	}
}
