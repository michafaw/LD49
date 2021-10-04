/// @description 
/// GMLive setup
if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters

if (shouldCheckLines) {
	shouldCheckLines = false;
	
	var numberOfLines = scrNumberOfBrokenTileLines();
	log("Number of Lines: " + string(numberOfLines));
	if (numberOfLines > 0) {
		scrCrashToNextLevel();
	}
}

// Create a new enemy if needed
if (state == "normal") {
	timeToEnemyCreation--;
	var _shouldCreateNow = (timeToEnemyCreation <= 0);
	if (instance_number(objEnemy) == 0)
		_shouldCreateNow = true;
	if (_shouldCreateNow) {
		var _randomTileNumber = irandom(array_length(tilePositionsX) - 1);
		var _newEnemy = instance_create_layer(tilePositionsX[_randomTileNumber], tilePositionsY[_randomTileNumber] - 18, "Instances", objEnemy);
		timeToEnemyCreation = 1.0 * room_speed * global.enemyCreationCooldownMultiplier;
	}
}