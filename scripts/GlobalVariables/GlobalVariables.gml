/// @description 
/// GMLive setup
//if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters
function initializeGlobals() {
	global.debugMode = true;
	global.showMichaLogs = true;
	
	global.enemyTimeToLiveMultiplier = 1.0;
	global.enemyCreationCooldownMultiplier = 1.0;
	
	global.currentLevel = 1;
	global.nextLevel = 2;
}