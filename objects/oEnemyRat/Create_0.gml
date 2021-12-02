statStr = 16;
statDex = 15;
statCon = 11;
statInt = rollStat();
statWis = rollStat();
statChr = rollStat();


// 2d6 HP
statHP = floor(random(6)) + floor(random(6)) + 2;

statArmorClass = 12;

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
	attackStrength: floor(random(4)) + 3
}

moveSpeed = .5;

charName ="Giant Rat";

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


