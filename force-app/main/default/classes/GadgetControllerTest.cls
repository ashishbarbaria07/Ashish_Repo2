@isTest
public class GadgetControllerTest {
    
    @isTest
    static void testCreateGadget() {
        // Call the method from the main class
        GadgetController.createGadget('Test Gadget', 123.45);

        // Query to verify the record was inserted
        Gadget__c insertedGadget = [SELECT Id, Gadget_Name__c, Price__c FROM Gadget__c WHERE Gadget_Name__c = 'Test Gadget' LIMIT 1];
        
        // Assertions to confirm correct behavior
        System.assertNotEquals(null, insertedGadget, 'Gadget record should be inserted');
        System.assertEquals('Test Gadget', insertedGadget.Gadget_Name__c, 'Gadget Name should match');
        System.assertEquals(123.45, insertedGadget.Price__c, 'Price should match');
    }
}