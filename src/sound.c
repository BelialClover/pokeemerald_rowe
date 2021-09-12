#include "global.h"
#include "gba/m4a_internal.h"
#include "sound.h"
#include "battle.h"
#include "event_data.h"
#include "m4a.h"
#include "main.h"
#include "pokemon.h"
#include "rtc.h"
#include "day_night.h"
#include "script.h"
#include "constants/songs.h"
#include "constants/flags.h"
#include "task.h"

struct Fanfare
{
    u16 songNum;
    u16 duration;
};

// ewram
EWRAM_DATA struct MusicPlayerInfo* gMPlay_PokemonCry = NULL;
EWRAM_DATA u8 gPokemonCryBGMDuckingCounter = 0;

// iwram bss
static u16 sCurrentMapMusic;
static u16 sNextMapMusic;
static u8 sMapMusicState;
static u8 sMapMusicFadeInSpeed;
static u16 sFanfareCounter;

// iwram common
bool8 gDisableMusic;

extern struct MusicPlayerInfo gMPlayInfo_BGM;
extern struct MusicPlayerInfo gMPlayInfo_SE1;
extern struct MusicPlayerInfo gMPlayInfo_SE2;
extern struct MusicPlayerInfo gMPlayInfo_SE3;
extern struct ToneData gCryTable[];
extern struct ToneData gCryTable2[];

static void Task_Fanfare(u8 taskId);
static void CreateFanfareTask(void);
static void Task_DuckBGMForPokemonCry(u8 taskId);
static void RestoreBGMVolumeAfterPokemonCry(void);

static const struct Fanfare sFanfares[] = {
    { MUS_LEVEL_UP,             80 },
    { MUS_OBTAIN_ITEM,         160 },
    { MUS_EVOLVED,             220 },
    { MUS_OBTAIN_TMHM,         220 },
    { MUS_HEAL,                160 },
    { MUS_OBTAIN_BADGE,        340 },
    { MUS_MOVE_DELETED,        180 },
    { MUS_OBTAIN_BERRY,        120 },
    { MUS_AWAKEN_LEGEND,       710 },
    { MUS_SLOTS_JACKPOT,       250 },
    { MUS_SLOTS_WIN,           150 },
    { MUS_TOO_BAD,             160 },
    { MUS_RG_POKE_FLUTE,       450 },
    { MUS_RG_OBTAIN_KEY_ITEM,  170 },
    { MUS_RG_DEX_RATING,       196 },
    { MUS_OBTAIN_B_POINTS,     313 },
    { MUS_OBTAIN_SYMBOL,       318 },
    { MUS_REGISTER_MATCH_CALL, 135 },
};

#define CRY_VOLUME  120 // was 125 in R/S

void InitMapMusic(void)
{
    gDisableMusic = (gSaveBlock2Ptr->optionsSound == 2);
    ResetMapMusic();
}

void MapMusicMain(void)
{
    switch (sMapMusicState)
    {
    case 0:
        break;
    case 1:
        sMapMusicState = 2;
        PlayBGM(sCurrentMapMusic);
        break;
    case 2:
    case 3:
    case 4:
        break;
    case 5:
        if (IsBGMStopped())
        {
            sNextMapMusic = 0;
            sMapMusicState = 0;
        }
        break;
    case 6:
        if (IsBGMStopped() && IsFanfareTaskInactive())
        {
            sCurrentMapMusic = sNextMapMusic;
            sNextMapMusic = 0;
            sMapMusicState = 2;
            PlayBGM(sCurrentMapMusic);
        }
        break;
    case 7:
        if (IsBGMStopped() && IsFanfareTaskInactive())
        {
            FadeInNewBGM(sNextMapMusic, sMapMusicFadeInSpeed);
            sCurrentMapMusic = sNextMapMusic;
            sNextMapMusic = 0;
            sMapMusicState = 2;
            sMapMusicFadeInSpeed = 0;
        }
        break;
    }
}

void ResetMapMusic(void)
{
    sCurrentMapMusic = 0;
    sNextMapMusic = 0;
    sMapMusicState = 0;
    sMapMusicFadeInSpeed = 0;
}

u16 GetCurrentMapMusic(void)
{
    return sCurrentMapMusic;
}

void PlayNewMapMusic(u16 songNum)
{
    sCurrentMapMusic = songNum;
    sNextMapMusic = 0;
    sMapMusicState = 1;
}

void StopMapMusic(void)
{
    sCurrentMapMusic = 0;
    sNextMapMusic = 0;
    sMapMusicState = 1;
}

void FadeOutMapMusic(u8 speed)
{
    if (IsNotWaitingForBGMStop())
        FadeOutBGM(speed);
    sCurrentMapMusic = 0;
    sNextMapMusic = 0;
    sMapMusicState = 5;
}

void FadeOutAndPlayNewMapMusic(u16 songNum, u8 speed)
{
    FadeOutMapMusic(speed);
    sCurrentMapMusic = 0;
    sNextMapMusic = songNum;
    sMapMusicState = 6;
}

void FadeOutAndFadeInNewMapMusic(u16 songNum, u8 fadeOutSpeed, u8 fadeInSpeed)
{
    FadeOutMapMusic(fadeOutSpeed);
    sCurrentMapMusic = 0;
    sNextMapMusic = songNum;
    sMapMusicState = 7;
    sMapMusicFadeInSpeed = fadeInSpeed;
}

void FadeInNewMapMusic(u16 songNum, u8 speed)
{
    FadeInNewBGM(songNum, speed);
    sCurrentMapMusic = songNum;
    sNextMapMusic = 0;
    sMapMusicState = 2;
    sMapMusicFadeInSpeed = 0;
}

bool8 IsNotWaitingForBGMStop(void)
{
    if (sMapMusicState == 6)
        return FALSE;
    if (sMapMusicState == 5)
        return FALSE;
    if (sMapMusicState == 7)
        return FALSE;
    return TRUE;
}

void PlayFanfareByFanfareNum(u8 fanfareNum)
{
    u16 songNum;
    m4aMPlayStop(&gMPlayInfo_BGM);
    songNum = sFanfares[fanfareNum].songNum;
    sFanfareCounter = sFanfares[fanfareNum].duration;
    m4aSongNumStart(songNum);
}

bool8 WaitFanfare(bool8 stop)
{
    if (sFanfareCounter)
    {
        sFanfareCounter--;
        return FALSE;
    }
    else
    {
        if (!stop)
            m4aMPlayContinue(&gMPlayInfo_BGM);
        else
            m4aSongNumStart(MUS_DUMMY);

        return TRUE;
    }
}

void StopFanfareByFanfareNum(u8 fanfareNum)
{
    m4aSongNumStop(sFanfares[fanfareNum].songNum);
}

void PlayFanfare(u16 songNum)
{
    s32 i;
    for (i = 0; (u32)i < 18; i++)
    {
        if (sFanfares[i].songNum == songNum)
        {
            PlayFanfareByFanfareNum(i);
            CreateFanfareTask();
            return;
        }
    }

    PlayFanfareByFanfareNum(0);
    CreateFanfareTask();
}

bool8 IsFanfareTaskInactive(void)
{
    if (FuncIsActiveTask(Task_Fanfare) == TRUE)
        return FALSE;
    return TRUE;
}

static void Task_Fanfare(u8 taskId)
{
    if (sFanfareCounter)
    {
        sFanfareCounter--;
    }
    else
    {
        m4aMPlayContinue(&gMPlayInfo_BGM);
        DestroyTask(taskId);
    }
}

static void CreateFanfareTask(void)
{
    if (FuncIsActiveTask(Task_Fanfare) != TRUE)
        CreateTask(Task_Fanfare, 80);
}

void FadeInNewBGM(u16 songNum, u8 speed)
{
    if (gDisableMusic)
        return;
    if (songNum == MUS_NONE)
        songNum = 0;
    m4aSongNumStart(songNum);
    m4aMPlayImmInit(&gMPlayInfo_BGM);
    m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, 0);
    m4aSongNumStop(songNum);
    m4aMPlayFadeIn(&gMPlayInfo_BGM, speed);
}

void FadeOutBGMTemporarily(u8 speed)
{
    m4aMPlayFadeOutTemporarily(&gMPlayInfo_BGM, speed);
}

bool8 IsBGMPausedOrStopped(void)
{
    if (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE)
        return TRUE;
    if (!(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK))
        return TRUE;
    return FALSE;
}

void FadeInBGM(u8 speed)
{
    m4aMPlayFadeIn(&gMPlayInfo_BGM, speed);
}

void FadeOutBGM(u8 speed)
{
    m4aMPlayFadeOut(&gMPlayInfo_BGM, speed);
}

bool8 IsBGMStopped(void)
{
    if (!(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK))
        return TRUE;
    return FALSE;
}

void PlayCry1(u16 species, s8 pan)
{
    if (gDisableMusic)
        return;
    m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, 85);
    PlayCryInternal(species, pan, CRY_VOLUME, 10, 0);
    gPokemonCryBGMDuckingCounter = 2;
    RestoreBGMVolumeAfterPokemonCry();
}

void PlayCry2(u16 species, s8 pan, s8 volume, u8 priority)
{
    if (gDisableMusic)
        return;
    PlayCryInternal(species, pan, volume, priority, 0);
}

void PlayCry3(u16 species, s8 pan, u8 mode)
{
    if (gDisableMusic)
        return;
    if (mode == 1)
    {
        PlayCryInternal(species, pan, CRY_VOLUME, 10, 1);
    }
    else
    {
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, 85);
        PlayCryInternal(species, pan, CRY_VOLUME, 10, mode);
        gPokemonCryBGMDuckingCounter = 2;
        RestoreBGMVolumeAfterPokemonCry();
    }
}

void PlayCry4(u16 species, s8 pan, u8 mode)
{
    if (gDisableMusic)
        return;
    if (mode == 1)
    {
        PlayCryInternal(species, pan, CRY_VOLUME, 10, 1);
    }
    else
    {
        if (!(gBattleTypeFlags & BATTLE_TYPE_MULTI))
            m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, 85);
        PlayCryInternal(species, pan, CRY_VOLUME, 10, mode);
    }
}

void PlayCry6(u16 species, s8 pan, u8 mode) // not present in R/S
{
    if (gDisableMusic)
        return;
    if (mode == 1)
    {
        PlayCryInternal(species, pan, CRY_VOLUME, 10, 1);
    }
    else
    {
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, 85);
        PlayCryInternal(species, pan, CRY_VOLUME, 10, mode);
        gPokemonCryBGMDuckingCounter = 2;
    }
}

void PlayCry5(u16 species, u8 mode)
{
    if (gDisableMusic)
        return;
    m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, 85);
    PlayCryInternal(species, 0, CRY_VOLUME, 10, mode);
    gPokemonCryBGMDuckingCounter = 2;
    RestoreBGMVolumeAfterPokemonCry();
}

void PlayCryInternal(u16 species, s8 pan, s8 volume, u8 priority, u8 mode)
{
    bool32 v0;
    u32 release;
    u32 length;
    u32 pitch;
    u32 chorus;

    length = 140;
    v0 = FALSE;
    release = 0;
    pitch = 15360;
    chorus = 0;

    switch (mode)
    {
    case 0:
        break;
    case 1:
        length = 20;
        release = 225;
        break;
    case 2:
        release = 225;
        pitch = 15600;
        chorus = 20;
        volume = 90;
        break;
    case 3:
        length = 50;
        release = 200;
        pitch = 15800;
        chorus = 20;
        volume = 90;
        break;
    case 4:
        length = 25;
        v0 = TRUE;
        release = 100;
        pitch = 15600;
        chorus = 192;
        volume = 90;
        break;
    case 5:
        release = 200;
        pitch = 14440;
        break;
    case 6:
        release = 220;
        pitch = 15555;
        chorus = 192;
        volume = 70;
        break;
    case 7:
        length = 10;
        release = 100;
        pitch = 14848;
        break;
    case 8:
        length = 60;
        release = 225;
        pitch = 15616;
        break;
    case 9:
        length = 15;
        v0 = TRUE;
        release = 125;
        pitch = 15200;
        break;
    case 10:
        length = 100;
        release = 225;
        pitch = 15200;
        break;
    case 12:
        length = 20;
        release = 225;
    case 11:
        pitch = 15000;
        break;
    }

    SetPokemonCryVolume(volume);
    SetPokemonCryPanpot(pan);
    SetPokemonCryPitch(pitch);
    SetPokemonCryLength(length);
    SetPokemonCryProgress(0);
    SetPokemonCryRelease(release);
    SetPokemonCryChorus(chorus);
    SetPokemonCryPriority(priority);

    species--;
    gMPlay_PokemonCry = SetPokemonCryTone(v0 ? &gCryTable2[species] : &gCryTable[species]);
}

bool8 IsCryFinished(void)
{
    if (FuncIsActiveTask(Task_DuckBGMForPokemonCry) == TRUE)
    {
        return FALSE;
    }
    else
    {
        ClearPokemonCrySongs();
        return TRUE;
    }
}

void StopCryAndClearCrySongs(void)
{
    m4aMPlayStop(gMPlay_PokemonCry);
    ClearPokemonCrySongs();
}

void StopCry(void)
{
    m4aMPlayStop(gMPlay_PokemonCry);
}

bool8 IsCryPlayingOrClearCrySongs(void)
{
    if (IsPokemonCryPlaying(gMPlay_PokemonCry))
    {
        return TRUE;
    }
    else
    {
        ClearPokemonCrySongs();
        return FALSE;
    }
}

bool8 IsCryPlaying(void)
{
    if (IsPokemonCryPlaying(gMPlay_PokemonCry))
        return TRUE;
    else
        return FALSE;
}

static void Task_DuckBGMForPokemonCry(u8 taskId)
{
    if (gPokemonCryBGMDuckingCounter)
    {
        gPokemonCryBGMDuckingCounter--;
        return;
    }

    if (!IsPokemonCryPlaying(gMPlay_PokemonCry))
    {
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, 256);
        DestroyTask(taskId);
    }
}

static void RestoreBGMVolumeAfterPokemonCry(void)
{
    if (FuncIsActiveTask(Task_DuckBGMForPokemonCry) != TRUE)
        CreateTask(Task_DuckBGMForPokemonCry, 80);
}

void PlayBGM(u16 songNum)
{
	u16 song = RegionalMusicHandler(songNum);
    if (gDisableMusic || songNum == MUS_NONE)
        return;
    m4aSongNumStart(song);
}

u16 RegionalMusicHandler(u16 songNum)
{
	bool8 music_enabled = TRUE;
	bool8 Gen4 = FALSE;
	switch(songNum)
	{
	//Introduction
	case MUS_ROUTE122:
		/*/if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_KANTO)
			return MUS_RG_SURF;else /*/
		if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_GS_STARTING;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return DP_SEQ_OPENING;
		else 
			return songNum;
	//Route 101
	case MUS_ROUTE101:
		if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_KANTO && music_enabled)
			return MUS_RG_ROUTE1;
		else if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO && music_enabled)
			return HG_SEQ_GS_R_1_29;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH && music_enabled)
			return HG_SEQ_GS_RADIO_R_201;
		else 
			return songNum;
	//Bicycle
	case MUS_CYCLING:
		if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_KANTO)
			return MUS_RG_CYCLING;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_PL_BICYCLE;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return DP_SEQ_BICYCLE;
		else 
			return songNum;
	break;
	//Surf
	case MUS_SURF:
		if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_KANTO)
			return MUS_RG_SURF;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_GS_NAMINORI;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return DP_SEQ_NAMINORI;
		else 
			return songNum;
	break;
	//Pokemon Center SFX
	case MUS_HEAL:
		RtcCalcLocalTime();
		if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_KANTO)
			return MUS_RG_HEAL;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_ME_ASA;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return DP_SEQ_ASA;
		else 
			return songNum;
	break;
	//Pokemon Center
	case MUS_POKE_CENTER:
		RtcCalcLocalTime();
		if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_KANTO)
			return MUS_RG_POKE_CENTER;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_GS_POKESEN;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH && IsCurrentlyDay())
			return DP_SEQ_PC_01;
		else if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH && !IsCurrentlyDay())
			return DP_SEQ_PC_02;
		else 
			return songNum;
	break;
	//Intro
	case MUS_INTRO:
		if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return PL_SEQ_TITLE00;
		else 
			return songNum;
	break;
	//Wild Battle
	case MUS_VS_WILD:
		if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_KANTO && !Gen4)
			return MUS_RG_VS_WILD;
		else if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_KANTO && Gen4)
			return HG_SEQ_GS_VS_NORAPOKE_KANTO;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_GS_VS_NORAPOKE;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return DP_SEQ_BA_POKE;
		else 
			return songNum;
	break;
	//Vs Trainer
	case MUS_VS_TRAINER:
	if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_KANTO && !Gen4)
			return MUS_RG_VS_TRAINER;
		else if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_KANTO && Gen4)
			return HG_SEQ_GS_VS_TRAINER_KANTO;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_GS_VS_TRAINER;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return DP_SEQ_BA_TRAIN;
		else 
			return songNum;
	break;
	//Vs Frontier Brain
	case MUS_VS_FRONTIER_BRAIN:
		if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_GS_BA_BRAIN;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return PL_SEQ_PL_BA_BRAIN;
		else 
			return songNum;
	break;
	//Gym 
	case MUS_GYM:
	if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_KANTO)
			return MUS_RG_GYM;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_GS_GYM;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return DP_SEQ_GYM;
		else 
			return songNum;
	break;
	//Gym Battle
	case MUS_VS_GYM_LEADER:
	if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_KANTO)
			return MUS_RG_VS_GYM_LEADER;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_GS_VS_GYMREADER;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return DP_SEQ_BA_GYM;
		else 
			return songNum;
	break;
	//Victory Trainer
	case MUS_VICTORY_TRAINER:
	if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_GS_WIN1;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return DP_SEQ_WINTRAIN;
		else 
			return songNum;
	break;
	//Gym Victory
	case MUS_VICTORY_GYM_LEADER:
	if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_GS_WIN3;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return DP_SEQ_WINTGYM;
		else 
			return songNum;
	break;
	//Wild Victory
	case MUS_VICTORY_WILD:
	if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_GS_WIN2_NOT_FAN;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return DP_SEQ_WINPOKE;
		else 
			return songNum;
	break;
	//Victory Road
	case MUS_VICTORY_ROAD:
	if (gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_KANTO)
			return MUS_RG_VICTORY_ROAD;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_GS_D_CHAMPROAD;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return DP_SEQ_D_01;
		else 
			return songNum;
	break;
	//Safari Zone
	case MUS_SAFARI_ZONE:
	if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_JOTHO)
			return HG_SEQ_GS_SAFARI_HOUSE;
		else if(gSaveBlock2Ptr->optionsMusicGame == OPTIONS_MUSIC_SINNOH)
			return DP_SEQ_D_SAFARI;
		else 
			return songNum;
	break;
	}
	return songNum;
	
	//return HQ_SEQ_ME_LVUP;		Level up SFX HGSS
	//return HQ_SEQ_GS_STARTING;	Introduction HGSS
	//return DP_SEQ_KENKYUJO;		Rowan DPPt
	//return DP_SEQ_OPENING;		Introducction DPPt
	//return PL_SEQ_PL_BA_BRAIN;	Vs Frontier Brain Platinum
	//return DP_SEQ_BLD_GAME;		Game Corner(DPPt)?
	//return DP_SEQ_BA_AGAKI;	
	//return MUS_CAUGHT;			Pokemon Caught RSE
	//return DP_SEQ_FANFA5;			Pokemon Caught DPPt
	//return MUS_RG_CAUGHT;			Pokemon Caught FRLG
	//return MUS_RG_CAUGHT_INTRO;	Pokemon Caught Intro FRLG
	//return DP_SEQ_FANFA1;			
	//return DP_SEQ_WAZA;			Item Obtained DPPt
	//return MUS_RG_ENCOUNTER_RIVAL 
	//return DP_SEQ_BA_RIVAL;		Vs Barry
	//return DP_SEQ_BADGE;			Badge Obtained DPPt
	//return DP_SEQ_SHINKA;			Evolution DPPt
	//return MUS_EVOLUTION;			Evolution RSE
	//return MUS_EVOLUTION_INTRO;	Evolution Intro RSE
	//return HG_SEQ_GS_VS_CHAMP;	Vs Champion HGSS
	//return DP_SEQ_BA_CHANP;		Vs Champion DP
	//return MUS_VS_CHAMPION				Vs Champion(RSE)
	//return DP_SEQ_D_03;			Ghost Masion(DP)?
	//return MUS_RG_POKE_TOWER;		Pokemon Tower(FRLG)
	//return MUS_MT_PYRE			Mt Pyre
	//return DP_SEQ_D_02;				Eterna Forest
	//return MUS_RG_VIRIDIAN_FOREST;	Viridian Forest
	//return MUS_PETALBURG_WOODS		Petalburg woods
	//return DP_SEQ_FS;				Shops (DP)
	//return MUS_POKE_MART;			Shops (RSE)
	//return MUS_RG_POKE_MART;		Shops (FRLG)
	//return DP_SEQ_D_LAKE;			Lakes DPPt
	//DP_SEQ_ROAD_A_AN;				First Route DPPt?
	//DP_SEQ_ROAD_A_D;				First Route DPPt?
	//DP_SEQ_TOWN01_N;				First City DPPt(this shit is slow like the battles lmao)
	//DP_SEQ_TOWN01_D;				First City DPPt(this shit is slow like the battles lmao)
	//MUS_RG_PALLET;				Pallet Town(FRLG)
	//MUS_RG_CYCLING;				Bike (FRLG)
	//MUS_CYCLING;					Bike (FRLG)
	//MUS_GAME_CORNER				Game Corner(RSE)			
	//MUS_RG_GAME_CORNER			Game Corner(FRLG)
	//MUS_VS_ELITE_FOUR				Elite Four(RSE)
	//MUS_VS_RIVAL					Vs Rival(RSE)
	//MUS_ENCOUNTER_ELITE_FOUR		Elite four overworld
	//MUS_UNDERWATER				Underwater music
	//MUS_BIRCH_LAB					Birch lab
}

void PlaySE(u16 songNum)
{
    if (gDisableMusic)
        return;
    m4aSongNumStart(songNum);
}

void PlaySE12WithPanning(u16 songNum, s8 pan)
{
    if (gDisableMusic)
        return;
    m4aSongNumStart(songNum);
    m4aMPlayImmInit(&gMPlayInfo_SE1);
    m4aMPlayImmInit(&gMPlayInfo_SE2);
    m4aMPlayPanpotControl(&gMPlayInfo_SE1, 0xFFFF, pan);
    m4aMPlayPanpotControl(&gMPlayInfo_SE2, 0xFFFF, pan);
}

void PlaySE1WithPanning(u16 songNum, s8 pan)
{
    if (gDisableMusic)
        return;
    m4aSongNumStart(songNum);
    m4aMPlayImmInit(&gMPlayInfo_SE1);
    m4aMPlayPanpotControl(&gMPlayInfo_SE1, 0xFFFF, pan);
}

void PlaySE2WithPanning(u16 songNum, s8 pan)
{
    if (gDisableMusic)
        return;
    m4aSongNumStart(songNum);
    m4aMPlayImmInit(&gMPlayInfo_SE2);
    m4aMPlayPanpotControl(&gMPlayInfo_SE2, 0xFFFF, pan);
}

void SE12PanpotControl(s8 pan)
{
    m4aMPlayPanpotControl(&gMPlayInfo_SE1, 0xFFFF, pan);
    m4aMPlayPanpotControl(&gMPlayInfo_SE2, 0xFFFF, pan);
}

bool8 IsSEPlaying(void)
{
    if ((gMPlayInfo_SE1.status & MUSICPLAYER_STATUS_PAUSE) && (gMPlayInfo_SE2.status & MUSICPLAYER_STATUS_PAUSE))
        return FALSE;
    if (!(gMPlayInfo_SE1.status & MUSICPLAYER_STATUS_TRACK) && !(gMPlayInfo_SE2.status & MUSICPLAYER_STATUS_TRACK))
        return FALSE;
    return TRUE;
}

bool8 IsBGMPlaying(void)
{
    if (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE)
        return FALSE;
    if (!(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK))
        return FALSE;
    return TRUE;
}

bool8 IsSpecialSEPlaying(void)
{
    if (gMPlayInfo_SE3.status & MUSICPLAYER_STATUS_PAUSE)
        return FALSE;
    if (!(gMPlayInfo_SE3.status & MUSICPLAYER_STATUS_TRACK))
        return FALSE;
    return TRUE;
}
