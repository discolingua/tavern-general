
// store sprite frame for consistency
spriteFrame = floor(random(5));
image_index = spriteFrame;


// 3d6 stats in order
statStr = rollStat();
statDex = rollStat();
statCon = rollStat();
statInt = rollStat();
statWis = rollStat();
statChr = rollStat();



while (( statBonus(statStr) + statBonus(statDex) + statBonus(statCon) ) < 0 ) {
	show_debug_message("rerolling");
	statStr = rollStat();
	statDex = rollStat();
	statCon = rollStat();
}

statLevel = 1;
statXP = 0;

// 1d10 + CON bonus for HP
statHP = floor(random(10)) + 1 + statBonus(statCon);


// track max HP to heal between maps 
statMaxHP = statHP;

statArmorClass = 10 + statBonus(statDex);

// everybody gets at least 4 HP
if (statHP < 4) { 
	statHP = 4; 
	statMaxHP = statHP;
}

// get initiative order with DEX bonus
initiativeOrder = rollInitiative(statDex);

// attackRange = 40;
// attackStrength = 8;
moveSpeed = .4;

attackStats = {};
attackStats[0] = {
	attackRange: 300,
	attackStrength: 6
}

charName = nameGen();

mouseOver = false;

// used by room manager to reset state-managed mobs
isMob = true;

// used in enemyIsHit and friendlyIsHit collision tests
isFriendly = true;


///Setup State Machine 
state_machine_init();

//Define States
state_create("Waiting",fighter_state_waiting);
state_create("Attack",archer_state_attack);
state_create("Attacked",fighter_state_attacked);
state_create("Tavern",fighter_state_tavern);
state_create("Inventory",fighter_state_inventory);

//Set the default state
state_init("Waiting");


