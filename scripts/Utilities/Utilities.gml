/// @description Utility functions (log, etc.)
/// GMLive setup
//if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters

function log(logString){
	if (live_call()) return live_result;
	show_debug_message("> " + logString);
}