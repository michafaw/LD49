/// @description Reset To New Level
if (live_call()) return live_result; /// GMLive setup



global.currentLevel = global.nextLevel;
global.nextLevel++;

state = "normal";
shouldCheckLines = false;

log("Resetting Tiles");
for (var i = 0; i < array_length(tilePositionsX); i++) {
	with (objTile) {
		// Could probably reuse the tiles, but this is simpler
		instance_destroy();
	}
	var newTile = instance_create_layer(tilePositionsX[i], tilePositionsY[i], "FloorTiles", objTile);
	newTile.tileID = i;
	log("Tile #" + string(i) + ": (" + string(tilePositionsX[i]) + ", " + string(tilePositionsY[i]) + ") vs (" + string(newTile.x) + ", " + string(newTile.y) + ")");
	
}


