@isTest
public class TriangleTest {
    
    // Test method to verify the updateContactName method
    @isTest
    static void testUpdateContactName() {
        // Create a test Contact record
        Contact testContact = new Contact(
            FirstName = 'John',
            LastName = 'Doe',
            Email = 'john.doe@example.com'
        );
        
        // Insert the test Contact record
        insert testContact;

        // Call the method to update the FirstName field
        Triangle.updateContactName(new List<Contact>{testContact});

        // Retrieve the updated Contact record
        testContact = [SELECT FirstName FROM Contact WHERE Id = :testContact.Id];

        // Assert that the FirstName field has been updated to 'Triangle'
        System.assertEquals('Triangle', testContact.FirstName, 'The FirstName field should be updated to "Triangle".');
    }
}