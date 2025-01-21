@isTest
public class HouseTest {
    @isTest
    static void testHouseClass() {
        // Create an instance of the House class
        House house = new House('123 Main Street', 6);

        // Test the constructor values
        System.assertEquals('123 Main Street', house.address);
        System.assertEquals(6, house.numberOfRooms);

        // Test the isBigHouse method
        Boolean result = house.isBigHouse();
        System.assertEquals(true, result);

        // Test for a small house
        House smallHouse = new House('456 Elm Street', 3);
        System.assertEquals(false, smallHouse.isBigHouse());
    }
}