const struct FacilityMon gBattleFactoryMons[NUM_FRONTIER_MONS] =
{
    [BATTLE_FACTORY_MON_VENUSAUR] = 
	{
        .species = SPECIES_VENUSAUR,
        .moves = {MOVE_SLUDGE_BOMB, MOVE_GIGA_DRAIN, MOVE_SYNTHESIS, MOVE_EARTH_POWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLACK_SLUDGE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID
	},
	[BATTLE_FACTORY_MON_VENUSAUR_MEGA] = 
	{
        .species = SPECIES_VENUSAUR,
        .moves = {MOVE_SLUDGE_BOMB, MOVE_GIGA_DRAIN, MOVE_SYNTHESIS, MOVE_EARTH_POWER},
        .itemTableId = BATTLE_FRONTIER_ITEM_VENUSAURITE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID
	},
	[BATTLE_FACTORY_MON_CHARIZARD] = 
	{
        .species = SPECIES_CHARIZARD,
        .moves = {MOVE_FIRE_BLAST, MOVE_DRAGON_PULSE, MOVE_AIR_SLASH, MOVE_ROOST},
        .itemTableId = BATTLE_FRONTIER_ITEM_LIFE_ORB,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID
	},
	[BATTLE_FACTORY_MON_CHARIZARD_MEGA_Y] = 
	{
        .species = SPECIES_CHARIZARD,
        .moves = {MOVE_FIRE_BLAST, MOVE_DRAGON_PULSE, MOVE_AIR_SLASH, MOVE_SOLAR_BEAM},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHARIZARDITE_Y,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID
	},
	[BATTLE_FACTORY_MON_CHARIZARD_MEGA_X] = 
	{
        .species = SPECIES_CHARIZARD,
        .moves = {MOVE_DRAGON_CLAW, MOVE_FLARE_BLITZ, MOVE_DRAGON_DANCE, MOVE_THUNDER_PUNCH},
        .itemTableId = BATTLE_FRONTIER_ITEM_CHARIZARDITE_X,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID
	},
	[BATTLE_FACTORY_MON_BLASTOISE] = 
	{
        .species = SPECIES_BLASTOISE,
        .moves = {MOVE_SHELL_SMASH, MOVE_SCALD, MOVE_ICE_BEAM, MOVE_PROTECT},
        .itemTableId = BATTLE_FRONTIER_ITEM_LEFTOVERS,
        .evSpread = F_EV_SPREAD_HP | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_BOLD
	},
	[BATTLE_FACTORY_MON_BLASTOISE_MEGA] = 
	{
        .species = SPECIES_BLASTOISE,
        .moves = {MOVE_DARK_PULSE, MOVE_WATER_PULSE, MOVE_ICE_BEAM, MOVE_AURA_SPHERE},
        .itemTableId = BATTLE_FRONTIER_ITEM_BLASTOISNITE,
        .evSpread = F_EV_SPREAD_SPEED | F_EV_SPREAD_SP_ATTACK,
        .nature = NATURE_TIMID
	},
};