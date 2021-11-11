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
initiativeOrder = (random(20) + 1 + statBonus(statDex));
if (initiativeOrder < 1) { initiativeOrder = 1; }

charName = nameGen();

mouseOver = false;


///Setup State Machine 
state_machine_init();

//Define States
state_create("Waiting",fighter_state_waiting);
state_create("Attack",fighter_state_attack);
state_create("Attacked",fighter_state_attacked);
//Set the default state
state_init("Waiting");


