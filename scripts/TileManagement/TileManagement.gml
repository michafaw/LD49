/// @description Tile Management Scripts
/// GMLive setup
//if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters


function scrBreakTileAtXY(_x, _y) {
	if (live_call(argument0, argument1)) return live_result;
	
	var hitTile = instance_position(_x, _y, objTile);
	if (hitTile != noone) {
		if (hitTile.state == "normal") {
			scrBreakTileInstance(hitTile);
		} else {
			log("Tile not in normal state, probably broken already! (" + hitTile.state + ")");	
		}
	}
}


function scrBreakTileInstance(_tile) {
	if (live_call(argument0)) return live_result;
	_tile.state = "broken";
	_tile.sprite_index = _tile.tileBrokenSprite;
	_tile.image_speed = 0;
	_tile.image_index = choose(0, 1, 2, 3);
	
	objMainControl.shouldCheckLines = true;
}


function scrCrashTileInstance(_tile) {
	if (live_call(argument0)) return live_result;
	var _prevState = _tile.state;
	_tile.state = "crash";
	if (_prevState == "broken")
		_tile.sprite_index = _tile.tileBrokenCrashSprite;
	else
		_tile.sprite_index = _tile.tileNormalCrashSprite;
	_tile.image_index = 0;
	_tile.image_speed = 1;
}


function scrCrashFullFloorOfTiles() {
	if (live_call()) return live_result;
	with (objTile) {
		if (self.state != "crash")
			scrCrashTileInstance(self);
	}
}

function scrNumberOfBrokenTileLines() {
	if (live_call()) return live_result;
	
	var _totalBroken = 0;
	with (objTile) {
		if (self.state == "broken")
			_totalBroken++;
	}
	
	if (_totalBroken > 5)
		return 1;
	//return 1;
	return 0;
}

function scrCrashToNextLevel() {
	if (live_call()) return live_result;
	scrCrashToLevel(global.nextLevel);
}

function scrCrashToLevel(_levelNumber) {
	if (live_call()) return live_result;
	log("scrCrashToLevel called");
	objMainControl.state = "crashing";
	objMainControl.alarm[0] = objMainControl.crashLength;
	global.nextLevel = _levelNumber;
	
	scrCrashFullFloorOfTiles();
	with(objEnemy) {
		self.state = "dead";
		scrFlingEnemyInstance(self);
	}
}

