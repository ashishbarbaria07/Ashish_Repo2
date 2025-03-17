@isTest
public class PlaystationTest {
    @isTest
    static void testPlaystationClass() {
        // Create a Playstation instance
        Playstation ps = new Playstation('PS5', 500.00, true);

        // Test constructor and initial values
        System.assertEquals('PS5', ps.model);
        System.assertEquals(500.00, ps.price);
        System.assert(ps.isAvailable);

        // Test applyDiscount method
        ps.applyDiscount(10);
        System.assertEquals(450.00, ps.price);

        // Test invalid discount
        try {
            ps.applyDiscount(110);
            System.assert(false, 'Expected exception not thrown for invalid discount.');
        } catch (Exception e) {
            System.assert(e.getMessage().contains('Discount percentage must be between 0 and 100.'));
        }

        // Test checkAvailability method
        System.assertEquals('Available', ps.checkAvailability());

        // Test out of stock scenario
        ps.isAvailable = false;
        System.assertEquals('Out of Stock', ps.checkAvailability());
    }
}