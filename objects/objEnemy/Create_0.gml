/// @description 
/// GMLive setup
if (live_call()) return live_result; // No parameters
//if (live_call(argument0, argument1)) return live_result; // Two parameters

state = "appearing"
sprite_index = sprEnemyAppear;
image_index = 0;
image_speed = 1;
timeToLive = 1.5 * room_speed * global.enemyTimeToLiveMultiplier;

deadHitSpeed = 25
deadHitRotationSpeed = 25

scoreValue = 100;