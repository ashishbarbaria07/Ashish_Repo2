@isTest
private class VanTest {
    @isTest
    static void testVan() {
        // Arrange
        String model = 'Ford Transit';
        Integer capacity = 12;

        // Act
        Van van = new Van(model, capacity);
        String vanDetails = van.getVanDetails();

        // Assert
        System.assertEquals('Ford Transit', van.model);
        System.assertEquals(12, van.capacity);
        System.assertEquals('Model: Ford Transit, Capacity: 12 passengers', vanDetails);
    }
}