@isTest
private class IndiaTest {
    @TestSetup
    static void setup() {
        // Any setup data needed for the tests can go here.  For this simple example,
        // we don't need any specific setup.
    }

    @isTest
    static void testSimpleLoop() {
        // Create an instance of the class
        India myIndia = new India();

        // Call the method to be tested
        myIndia.simpleLoop(5);

        // Assertions (check if the method behaved as expected)
        // Since the method only uses System.debug, we can't directly assert on the output.
        // In a real test, you would likely have some return value or database changes to assert.
        // For this example, we'll just assert that the method runs without exceptions.  This is a basic check.
        System.assert(true, 'The simpleLoop method ran without exceptions.');  // If an exception occurs, this will fail.

        // More robust testing would involve checking actual changes to data or return values.  For instance:
        // Integer expectedValue = 10;
        // Integer actualValue = myIndia.someMethodThatReturnsAValue();
        // System.assertEquals(expectedValue, actualValue, 'The returned value is incorrect.');
    }
}