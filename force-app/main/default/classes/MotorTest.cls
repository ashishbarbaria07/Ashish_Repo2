@isTest
public class MotorTest {
    @isTest
    static void testMotorCreationAndInfo() {
        // Create a Motor instance
        Motor testMotor = new Motor('Test Motor', 10.0);

        // Assert that values are set correctly
        System.assertEquals('Test Motor', testMotor.name);
        System.assertEquals(10.0, testMotor.power);

        // Test getInfo method
        String expectedInfo = 'Motor: Test Motor, Power: 10.0 kW';
        System.assertEquals(expectedInfo, testMotor.getInfo());
    }
}