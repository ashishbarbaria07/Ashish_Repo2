public class CricketManager {
    // Inner class to represent a Player
    public class Player {
        public String name { get; set; }
        public String role { get; set; }
        public Integer runs { get; set; }

        // Constructor
        public Player(String name, String role, Integer runs) {
            this.name = name;
            this.role = role;
            this.runs = runs;
        }
    }

    // List to store players
    private List<Player> players;

    // Constructor to initialize the players list
    public CricketManager() {
        players = new List<Player>();
    }

    // Method to add a player
    public void addPlayer(String name, String role, Integer runs) {
        players.add(new Player(name, role, runs));
    }

    // Method to get all players
    public List<Player> getAllPlayers() {
        return players;
    }

    // Method to calculate total runs scored
    public Integer calculateTotalRuns() {
        Integer totalRuns = 0;
        for (Player player : players) {
            totalRuns += player.runs;
        }
        return totalRuns;
    }
}