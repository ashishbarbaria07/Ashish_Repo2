@isTest
public class InternTest {
    
    // Test method to verify the updateContactTitle method
    @isTest
    static void testUpdateContactTitle() {
        // Create a test Contact record
        Contact testContact = new Contact(
            FirstName = 'John',
            LastName = 'Doe',
            Email = 'john.doe@example.com',
            Title = 'New'  // initial Title value
        );
        
        // Insert the test Contact record
        insert testContact;

        // Call the method to update the Title field
        Intern.updateContactTitle(new List<Contact>{testContact});

        // Retrieve the updated Contact record
        testContact = [SELECT Title FROM Contact WHERE Id = :testContact.Id];

        // Assert that the Title field has been updated to 'Intern'
        System.assertEquals('Intern', testContact.Title, 'The Title field should be updated to "Intern".');
    }
}