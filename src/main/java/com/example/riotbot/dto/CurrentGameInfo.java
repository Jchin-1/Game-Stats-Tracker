package com.example.riotbot.dto;

import java.util.List;

public record CurrentGameInfo(long gameId, String gameMode, List<CurrentGameParticipant> participants) {
    public record CurrentGameParticipant(String puuid, String summonerId, long teamId, String riotId) {
    }
}
