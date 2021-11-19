
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

statLevel = 1;

// 1d8 + CON bonus for HP
statHP = floor(random(8)) + 1 + statBonus(statCon);


// track max HP to heal between maps 
statMaxHP = statHP;

statArmorClass = 10 + statBonus(statDex);

// everybody gets at least 1HP
if (statHP < 1) { 
	statHP = 1; 
	statMaxHP = statHP;
}

// get initiative order with DEX bonus
initiativeOrder = (random(20) + 1 + statBonus(statDex));
if (initiativeOrder < 1) { 
	initiativeOrder = random(1); 
} else {
	initiativeOrder *= 10;
}

attackRange = 40;
attackStrength = 8;
moveSpeed = .4;

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
state_create("Attack",fighter_state_attack);
state_create("Attacked",fighter_state_attacked);
state_create("Tavern",fighter_state_tavern);

//Set the default state
state_init("Waiting");


