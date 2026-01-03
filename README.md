# Scout Bot (League of Legends Stats Tracker)

**Scout Bot** is a high-performance Discord bot designed to provide instant, detailed League of Legends match statistics. It leverages the Riot API to offer live game lookups, smart match history scouting (including ARAM/Mayhem), and professional-grade visualizations.

## Features

- **🔎 Live Game Lookup**: Instantly check if a summoner is in an active match using the Spectator V4 API.
- **📜 Recent Match History**: Intelligently fetches and sorts the last 10 matches to ensure the absolute latest game is displayed, regardless of game mode (Classic, ARAM, URF, Arena).
- **🎨 Rich Visual Embeds**: 
    - **Dynamic Colors**: Green for Victory, Red for Defeat.
    - **Visuals**: Auto-fetched Champion thumbnails.
    - **Detailed Stats**: Breakdown of KDA, Damage Dealt/Taken, CS (Minions + Jungle), Gold, and Vision Score.
- **⚡ Immediate Response**: Implements deferred replies to prevent Discord timeouts, buying 15 minutes of processing time for API-intensive lookups.

## Setup Guide

### Prerequisites
- Java 23 or higher
- Maven
- A Discord App Token
- A Riot Games API Key

### Installation

1. **Clone the Repository**
   ```bash
   git clone https://github.com/YourUsername/Scout-Bot.git
   cd Scout-Bot
   ```

2. **Configure Keys**
   Open `src/main/resources/application.properties` and add your keys:
   ```properties
   discord.token=YOUR_DISCORD_TOKEN_HERE
   riot.api.key=YOUR_RIOT_API_KEY_HERE
   
   logging.level.root=INFO
   logging.level.com.example.riotbot=DEBUG
   ```

3. **Build and Run**
   ```bash
   mvn clean package
   java -jar target/riotbot-0.0.1-SNAPSHOT.jar
   ```

## Legal Disclaimer

Scout Bot isn't endorsed by Riot Games and doesn't reflect the views or opinions of Riot Games or anyone officially involved in producing or managing Riot Games properties. Riot Games, and all associated properties are trademarks or registered trademarks of Riot Games, Inc.