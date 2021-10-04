/// @description 
/// GMLive setup
//if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters

global.firstTimeSetupNeeded = true;

function initializeGlobals() {
	
	global.debugMode = false;
	global.showMichaLogs = true;
	
	if (global.firstTimeSetupNeeded) {
		global.firstTimeSetupNeeded = false;
		global.highScore = 0;
	} else {
		log("Skipping first time setup");
	}
	
	global.enemyTimeToLiveMultiplier = 1.0;
	global.enemyCreationCooldownMultiplier = 0.8;
	
	global.score = 0;
	
	global.currentLevel = 1;
	global.nextLevel = 2;
}