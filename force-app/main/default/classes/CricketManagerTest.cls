@isTest
public class CricketManagerTest {
    @isTest
    static void testCricketManager() {
        // Create an instance of CricketManager
        CricketManager manager = new CricketManager();

        // Add players
        manager.addPlayer('Virat Kohli', 'Batsman', 973);
        manager.addPlayer('Jasprit Bumrah', 'Bowler', 10);
        manager.addPlayer('MS Dhoni', 'Wicketkeeper-Batsman', 400);

        // Test getAllPlayers()
        List<CricketManager.Player> players = manager.getAllPlayers();
        System.assertEquals(3, players.size(), 'There should be 3 players in the list');

        // Validate player details
        CricketManager.Player player1 = players[0];
        System.assertEquals('Virat Kohli', player1.name, 'Player 1 name should be Virat Kohli');
        System.assertEquals('Batsman', player1.role, 'Player 1 role should be Batsman');
        System.assertEquals(973, player1.runs, 'Player 1 runs should be 973');

        // Test calculateTotalRuns()
        Integer totalRuns = manager.calculateTotalRuns();
        System.assertEquals(1383, totalRuns, 'Total runs should be 1383');
    }
}