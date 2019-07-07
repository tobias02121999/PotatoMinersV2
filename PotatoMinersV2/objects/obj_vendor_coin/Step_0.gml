// Inherit the parent event
event_inherited();

// Set the cost of the coin vendor
var stoneGain = player.stone;
var coalGain = player.coal * 5;
var ironGain = player.iron * 10;
var goldGain = player.gold * 20;
var diamondGain = player.diamond * 40;
var totalGain = stoneGain + coalGain + ironGain + goldGain + diamondGain;

cost[0] = -totalGain;
cost[1] = -totalGain;
