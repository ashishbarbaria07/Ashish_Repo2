trigger Bheem on Donation__c (before insert) {
    for (Donation__c donation : Trigger.new) {
        if (donation.Donation_Amount__c <= 0) {
            donation.addError('Donation Amount must be greater than 0.');
        }
    }
}