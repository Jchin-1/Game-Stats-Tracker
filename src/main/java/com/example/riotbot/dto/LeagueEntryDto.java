package com.example.riotbot.dto;

public record LeagueEntryDto(String leagueId, String summonerId, String queueType, String tier, String rank,
        int leaguePoints, int wins, int losses, boolean hotStreak, boolean veteran, boolean freshBlood,
        boolean inactive) {
}
