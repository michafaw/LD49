/// @description
/// GMLive setup
if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters

log("Initializing...");

initializeGlobals();



room_goto(roomTitle)