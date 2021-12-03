#macro PARTY_SLOTS 12
#macro ROW_LENGTH 6
#macro SLOT_SIZE 48
#macro BORDER_SIZE 16

// main array to hold characters in party from map to map

global.characterPool = array_create(PARTY_SLOTS, -1);

// boolean array to track which mapIDs are unlocked on the overworld

global.mapsUnlocked = array_create(99, false);

global.playerSilver = 100;

global.adjStr = [ "WEAK!!", "WEAK!", "WEAK", "weak", "", "strong", "STRONG", "STRONG!", "STRONG!!" ];
global.adjDex = [ "SLOW!!", "SLOW!", "SLOW", "slow", "", "fast", "FAST", "FAST!", "FAST!!" ];
global.adjCon = [ "SICKLY!!", "SICKLY!", "SICKLY", "sickly", "", "tough", "TOUGH", "TOUGH!", "TOUGH!!"];


characterInfoString = "";
