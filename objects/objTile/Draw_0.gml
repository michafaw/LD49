/// @description 
/// GMLive setup
if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters


var shouldJitter = false;
if (state == "normal")
	shouldJitter = true;
else if (state == "broken")
	shouldJitter = true;
if (shouldJitter) {
	var xJitter = irandom_range(-2, 2);
	var yJitter = irandom_range(-2, 2)
	draw_sprite(sprite_index, image_index, x+xJitter, y+yJitter);
} else {
	draw_self()
}

//draw_set_font(fntLucida16)
//draw_text(x, y, string(tileID) + "/" + string(instance_number(objTile)));