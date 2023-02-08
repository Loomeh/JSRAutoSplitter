/* A very simple JSR load remover for LiveSplit. Made by Loomeh with help
from the Speedrun Tools Development Discord*/

state("jetsetradio")
{
    bool isLoading: 0x58FAAC;
    bool newGame: 0x75A278;		
    bool rankingScreen: 0x58FB1C;
    int bossGraffiti: 0x55D2B8;

}

startup
{
	refreshRate = 62;	
}

isLoading
{
	return current.isLoading;
}

start
{
	return old.newGame && !current.newGame;
}

split
{
    return old.bossGraffiti != 7 && current.bossGraffiti == 7 || !old.rankingScreen && current.rankingScreen;
}
