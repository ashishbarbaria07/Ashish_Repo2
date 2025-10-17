@isTest
private class FlagTest {
    @isTest
    static void testGetFlagInfo() {
        // Create a Flag instance
        Flag flag = new Flag('Japan', 'Red and White');

        // Call the method
        // test from ashish
        String info = flag.getFlagInfo();

        // Verify the result
        System.assertEquals('Flag of Japan has color: Red and White', info);
    }
}