// Give coins to the player
var stoneGain = obj_player.stone;
var ironGain = obj_player.iron * 2;
var goldGain = obj_player.gold * 3;
var diamondGain = obj_player.diamond * 4;
var totalGain = stoneGain + ironGain + goldGain + diamondGain;

obj_player.coin += totalGain;

obj_player.stone = 0;
obj_player.iron = 0;
obj_player.gold = 0;
obj_player.diamond = 0;
