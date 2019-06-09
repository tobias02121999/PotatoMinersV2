// Inherit the parent event
event_inherited();

// Set the cost of the coin vendor
var stoneGain = player.stone;
var ironGain = player.iron * 2;
var goldGain = player.gold * 4;
var diamondGain = player.diamond * 8;
var totalGain = stoneGain + ironGain + goldGain + diamondGain;

cost = -totalGain;
