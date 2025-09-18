trigger SummerTrigger on Summer__c (before insert, before update) {

    for (Summer__c summer : Trigger.new) {
        if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
            // Example: Enforce that Summer23 and Summer24 fields are required.
            if (summer.Summer23__c == null || summer.Summer24__c == null) {
                summer.addError('Summer23 and Summer24 fields are required.');
            }
            //Example: Enforce that Summer24 must be greater than Summer23.
            if(summer.Summer23__c != null && summer.Summer24__c != null && summer.Summer24__c <= summer.Summer23__c){
                summer.addError('Summer24 must be greater than Summer23.');
            }

            // Add other validation or logic here.
        }
    }
}