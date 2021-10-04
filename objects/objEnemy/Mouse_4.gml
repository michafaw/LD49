/// @description 
/// GMLive setup
if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters


if (state != "dead") {
	log("Enemy hit")
	state = "dead"
	
	scrFlingEnemyInstance(self);
	
	scrBreakTileAtXY(x, y);
}

