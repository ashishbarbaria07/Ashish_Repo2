@isTest
public class EdenGardenTest {
    @isTest
    static void testCalculateAverageRuns() {
        // Test with valid runs
        List<Integer> runsPerMatch = new List<Integer>{250, 300, 200, 150};
        Decimal expectedAverage = 225.0;

        Test.startTest();
        Decimal actualAverage = EdenGarden.calculateAverageRuns(runsPerMatch);
        Test.stopTest();

        System.assertEquals(expectedAverage, actualAverage, 'Average runs calculation is incorrect.');

        // Test with empty list
        try {
            EdenGarden.calculateAverageRuns(new List<Integer>());
            System.assert(false, 'Expected exception for empty runs list.');
        } catch (Exception e) {
            System.assertEquals('List of runs cannot be null or empty.', e.getMessage());
        }
    }

    @isTest
    static void testGetMatchStatus() {
        // Test High Scoring Match
        String status = EdenGarden.getMatchStatus(320);
        System.assertEquals('High Scoring Match', status, 'Incorrect match status for high runs.');

        // Test Moderate Scoring Match
        status = EdenGarden.getMatchStatus(200);
        System.assertEquals('Moderate Scoring Match', status, 'Incorrect match status for moderate runs.');

        // Test Low Scoring Match
        status = EdenGarden.getMatchStatus(120);
        System.assertEquals('Low Scoring Match', status, 'Incorrect match status for low runs.');
    }
}