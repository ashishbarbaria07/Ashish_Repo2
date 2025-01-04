public class Tester {
    // Method to validate Engineer records
    public static void validateEngineers(List<Engineer__c> engineers) {
        for (Engineer__c engineer : engineers) {
            // Ensure Salary is greater than 0
            if (engineer.Salary__c != null && engineer.Salary__c <= 0) {
                engineer.addError('Salary must be greater than 0.');
            }

            // Ensure Role is not blank
            if (String.isBlank(engineer.Role__c)) {
                engineer.addError('Role cannot be blank.');
            }
        }
    }
}