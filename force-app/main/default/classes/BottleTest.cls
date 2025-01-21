@isTest
public class BottleTest {
    // Test for getCapacity method
    @isTest
    static void testGetCapacity() {
        Integer expectedCapacity = 1000;
        Integer actualCapacity = Bottle.getCapacity();
        System.assertEquals(expectedCapacity, actualCapacity, 'The capacity should be 1000ml.');
    }

    // Test for isFull method
    @isTest
    static void testIsFull() {
        Boolean expectedIsFull = true;
        Boolean actualIsFull = Bottle.isFull();
        System.assertEquals(expectedIsFull, actualIsFull, 'The bottle should be full.');
    }
}