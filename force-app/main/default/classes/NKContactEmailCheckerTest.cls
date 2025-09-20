@IsTest
private class NKContactEmailCheckerTest {

    @IsTest
    static void testFindContactsMissingEmail() {
        // Create Account
        Account acc = new Account(Name = 'Test Account');
        insert acc;

        // Create Contacts
        List<Contact> contacts = new List<Contact>{
            new Contact(FirstName = 'John', LastName = 'Doe', AccountId = acc.Id, Email = null),
            new Contact(FirstName = 'Jane', LastName = 'Smith', AccountId = acc.Id, Email = ''),
            new Contact(FirstName = 'Alice', LastName = 'Walker', AccountId = acc.Id, Email = 'alice@test.com')
        };
        insert contacts;

        Test.startTest();
        List<Contact> missing = NKContactEmailChecker.findContactsMissingEmail(acc.Id);
        Test.stopTest();

        System.assertEquals(2, missing.size(), 'Two contacts should be missing emails');
        System.assert(missing[0].Email == null || missing[0].Email == '', 'Email should be empty');
    }

    @IsTest
    static void testWithNullAccountId() {
        Test.startTest();
        List<Contact> result = NKContactEmailChecker.findContactsMissingEmail(null);
        Test.stopTest();

        System.assertEquals(0, result.size(), 'Null accountId should return empty list');
    }
}