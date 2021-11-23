#macro PARTY_SLOTS 12
#macro ROW_LENGTH 6
#macro SLOT_SIZE 48
#macro BORDER_SIZE 16

global.characterPool = array_create(PARTY_SLOTS, -1);

global.playerSilver = 50;

global.adjStr = [ "WEAK!!", "WEAK!", "WEAK", "weak", "", "strong", "STRONG", "STRONG!", "STRONG!!" ];
global.adjDex = [ "SLOW!!", "SLOW!", "SLOW", "slow", "", "fast", "FAST", "FAST!", "FAST!!" ];
global.adjCon = [ "SICKLY!!", "SICKLY!", "SICKLY", "sickly", "", "tough", "TOUGH", "TOUGH!", "TOUGH!!"];


characterInfoString = "";
