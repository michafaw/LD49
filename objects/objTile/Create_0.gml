/// @description 
/// GMLive setup
if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters

state = "normal"; // normal, broken, crash
tileNormalSprite = sprTile1;
tileBrokenSprite = sprTile1Broken;
tileNormalCrashSprite = sprTile1Crash;
tileBrokenCrashSprite = sprTile1BrokenCrash;

tileID = noone; // Set/used by objMainControl


// Initialization
sprite_index = tileNormalSprite;
image_index = 0;
image_speed = 0;