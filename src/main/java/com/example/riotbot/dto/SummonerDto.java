package com.example.riotbot.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public record SummonerDto(@JsonProperty("id") String id, String accountId, String puuid, String name, int profileIconId,
                long revisionDate,
                int summonerLevel) {
}
