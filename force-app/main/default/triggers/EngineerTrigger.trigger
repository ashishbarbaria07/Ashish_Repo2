trigger EngineerTrigger on Engineer__c (before insert, before update) {
    if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        // Call Tester class to validate Engineer records
        Tester.validateEngineers(Trigger.new);
    }
}