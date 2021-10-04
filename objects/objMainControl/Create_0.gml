/// @description
/// GMLive setup
if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters

debugMode = true;

log("Entering Main Screen...");

shouldCheckLines = false;
state = "normal"; // normal, crashing, (crashdone?)

timeToEnemyCreation = 1.0 * room_speed * global.enemyCreationCooldownMultiplier;
crashLength = 1.5*room_speed;


// Store locations of tiles from the room
var _tilePositionsX = array_create(0);
var _tilePositionsY = array_create(0);
var _tileID = 0; 
with (objTile) {
	array_push(_tilePositionsX, x);
	array_push(_tilePositionsY, y);
	tileID = _tileID++;
}

tilePositionsX = _tilePositionsX;
tilePositionsY = _tilePositionsY;

// Debug output of tile position array
for (var i = 0; i < array_length(tilePositionsX); i++) {
	log("---Tile Positions---");
	log("Tile #" + string(i) + ": (" + string(tilePositionsX[i]) + ", " + string(tilePositionsY[i]) + ")");
}