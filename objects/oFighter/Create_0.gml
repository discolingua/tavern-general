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

mouseOver = false;
