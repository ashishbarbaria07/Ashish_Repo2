@isTest
public class VehicleHandlerTest {
    
    @isTest
    static void testAddVehicle() {
        // Call method to insert a vehicle
        VehicleHandler.addVehicle('Tesla Model S', 2023);
        
        // Query to verify
        Vehicle__c result = [SELECT Id, Model__c, Year__c FROM Vehicle__c WHERE Model__c = 'Tesla Model S' LIMIT 1];
        
        // Assert to confirm it's inserted correctly
        System.assertNotEquals(null, result, 'Vehicle should be inserted');
        System.assertEquals('Tesla Model S', result.Model__c);
        System.assertEquals(2023, result.Year__c);
    }
}