// These boolean arrays are needed to prevent endless
// button instances from being created in the Draw GUI event

hasHealButton = array_create(PARTY_SLOTS, false);
hasLevelButton = array_create(PARTY_SLOTS,false);


// status line for temp info display

statusLine = "";
statusLineTimer = 0;
