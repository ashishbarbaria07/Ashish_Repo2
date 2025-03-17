@isTest
public class TesterTest {
    @isTest
    static void testValidateEngineers() {
        // Test valid Engineer
        Engineer__c validEngineer = new Engineer__c(Role__c = 'Software Engineer', Salary__c = 50000);
        Test.startTest();
        Database.SaveResult validResult = Database.insert(validEngineer, false);
        Test.stopTest();

        // Test Engineer with blank Role
        Engineer__c blankRoleEngineer = new Engineer__c(Role__c = '', Salary__c = 60000);
        Test.startTest();
        Database.SaveResult blankRoleResult = Database.insert(blankRoleEngineer, false);
        Test.stopTest();

        // Test Engineer with invalid Salary
        Engineer__c invalidSalaryEngineer = new Engineer__c(Role__c = 'Developer', Salary__c = 0);
        Test.startTest();
        Database.SaveResult invalidSalaryResult = Database.insert(invalidSalaryEngineer, false);
        Test.stopTest();
    }
}