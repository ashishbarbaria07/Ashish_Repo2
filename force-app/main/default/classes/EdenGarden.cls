public class EdenGarden {
    // Method to calculate the average runs scored in a match
    public static Decimal calculateAverageRuns(List<Integer> runsPerMatch) {
        if (runsPerMatch == null || runsPerMatch.isEmpty()) {
            throw new IllegalArgumentException('List of runs cannot be null or empty.');
        }

        Integer totalRuns = 0;
        for (Integer runs : runsPerMatch) {
            totalRuns += runs;
        }
        return totalRuns / (Decimal)runsPerMatch.size();
    }

    // Method to get match status based on total runs
    public static String getMatchStatus(Integer totalRuns) {
        if (totalRuns >= 299) {
            return 'High Scoring Match';
        } else if (totalRuns >= 150) {
            return 'Moderate Scoring Match';
        } else {
            return 'Low Scoring Match';
        }
    }
}