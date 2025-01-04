trigger DoctorTrigger on Doctor__c (before insert, before update) {
    for (Doctor__c doctor : Trigger.new) {
        // Ensure Fees is greater than or equal to a minimum amount
        if (doctor.Fees__c != null && doctor.Fees__c < 100) {
            doctor.addError('Fees must be at least 100.');
        }
        
        // Example: Automatically apply a default fee if not provided
        if (doctor.Fees__c == null) {
            doctor.Fees__c = 500; // Default fee
        }
    }
}