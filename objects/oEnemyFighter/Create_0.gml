statStr = rollStat();
statDex = rollStat();
statCon = rollStat();
statInt = rollStat();
statWis = rollStat();
statChr = rollStat();


// 1d8 + CON bonus for HP
statHP = floor(random(8)) + 1 + statBonus(statCon);

statArmorClass = 10 + statBonus(statDex);

// everybody gets at least 1HP
if (statHP < 1) { statHP = 1; }

// get initiative order with DEX bonus
// use floats so there's never ties
initiativeOrder = (random(20) + 1 + statBonus(statDex));
if (initiativeOrder < 1) { 
	initiativeOrder = random(1); 
} else {
	initiativeOrder *= 10;
}

attackStats = {};
attackStats[0] = {
	attackRange: 40,
	attackStrength: 8
}

moveSpeed = .5;

charName = nameGen();

mouseOver = false;
isMob = true;
isFriendly = false;

///Setup State Machine 
state_machine_init();

//Define States
state_create("Waiting",enemy_fighter_state_waiting);
state_create("Attack",enemy_fighter_state_attack);
state_create("Attacked",enemy_fighter_state_attacked);

//Set the default state
state_init("Waiting");


