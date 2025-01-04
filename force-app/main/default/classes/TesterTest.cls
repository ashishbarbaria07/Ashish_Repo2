@isTest
public class TesterTest {
    @isTest
    static void testValidateEngineers() {
        // Test Case 1: Valid Engineer Record
        Engineer__c validEngineer = new Engineer__c(
            Role__c = 'Software Engineer',
            Salary__c = 50000
        );

        // Test Case 2: Engineer with blank Role
        Engineer__c blankRoleEngineer = new Engineer__c(
            Role__c = '',
            Salary__c = 60000
        );

        // Test Case 3: Engineer with Salary less than or equal to 0
        Engineer__c invalidSalaryEngineer = new Engineer__c(
            Role__c = 'Developer',
            Salary__c = 0
        );

        // Add records to a list
        List<Engineer__c> engineers = new List<Engineer__c>{
            validEngineer, 
            blankRoleEngineer, 
            invalidSalaryEngineer
        };

        // Test validation
        Test.startTest();
        try {
            // Call validation method
            Tester.validateEngineers(engineers);
            System.assert(false, 'Expected validation errors to occur.');
        } catch (Exception e) {
            System.assert(e instanceof DmlException, 'Expected DmlException due to validation errors.');
        }
        Test.stopTest();

        // Assert specific error messages
        for (Engineer__c engineer : engineers) {
            if (engineer.Role__c == '') {
                System.assertEquals('Role cannot be blank.', engineer.getErrors()[0].getMessage());
            }
            if (engineer.Salary__c != null && engineer.Salary__c <= 0) {
                System.assertEquals('Salary must be greater than 0.', engineer.getErrors()[0].getMessage());
            }
        }
    }
}