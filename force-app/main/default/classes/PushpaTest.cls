@isTest
public class PushpaTest {
    @isTest
    static void testPushpaClass() {
        // Create a Pushpa instance
        Pushpa p = new Pushpa('Pushpa', 75, true);

        // Test constructor and initial values
        System.assertEquals('Pushpa', p.name);
        System.assertEquals(75, p.strength);
        System.assert(p.isDetermined);

        // Test checkDetermination method
        String determinationMessage = p.checkDetermination();
        System.assertEquals('Pushpa never backs down!', determinationMessage);

        // Test boostStrength method
        p.boostStrength(25);
        System.assertEquals(100, p.strength);

        // Test invalid strength increment
        try {
            p.boostStrength(-10);
            System.assert(false, 'Expected exception not thrown for negative increment.');
        } catch (Exception e) {
            System.assert(e.getMessage().contains('Strength increment must be positive.'));
        }

        // Test checkDetermination when not determined
        p.isDetermined = false;
        determinationMessage = p.checkDetermination();
        System.assertEquals('Pushpa needs more determination.', determinationMessage);
    }
}