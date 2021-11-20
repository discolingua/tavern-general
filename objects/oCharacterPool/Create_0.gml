#macro PARTY_SLOTS 12

global.characterPool = array_create(PARTY_SLOTS, -1);
global.charsInPool = 0;

global.playerSilver = 50;

global.adjStr = [ "WEAK!!", "WEAK!", "WEAK", "weak", "", "strong", "STRONG", "STRONG!", "STRONG!!" ];
global.adjDex = [ "SLOW!!", "SLOW!", "SLOW", "slow", "", "fast", "FAST", "FAST!", "FAST!!" ];
global.adjCon = [ "SICKLY!!", "SICKLY!", "SICKLY", "sickly", "", "tough", "TOUGH", "TOUGH!", "TOUGH!!"];

rowLength = 6;
colHeight = 2;
slotSize = 48;
borderSize = 16;

isVisible = false;
