statStr = rollStat();
statDex = rollStat();
statCon = rollStat();
statInt = rollStat();
statWis = rollStat();
statChr = rollStat();


// 1d8 + CON bonus for HP
statHP = floor(random(8)) + 1 + statBonus(statCon);

// everybody gets at least 1HP
if (statHP < 1) { statHP = 1; }

// get initiative order with DEX bonus
initiativeOrder = random(20) + 1 + statBonus(statDex);

charName = nameGen();

mouseOver = false;


///Setup State Machine 
state_machine_init();

//Define States
state_create("Stand",fighter_state_stand());
state_create("Attack",fighter_state_attack());
//Set the default state
state_init("Stand");


