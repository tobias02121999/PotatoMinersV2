// Inherit the parent event
event_inherited();

// Set the cost of the coin vendor
var stoneGain = player.stone;
var ironGain = player.iron * 5;
var goldGain = player.gold * 10;
var diamondGain = player.diamond * 20;
var totalGain = stoneGain + ironGain + goldGain + diamondGain;

cost = -totalGain;
