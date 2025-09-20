public class NKContactEmailChecker {
    /**
     * Finds all Contacts without email under the given Account Id.
     * @param accountId The Id of the Account to check.
     * @return List<Contact> Contacts missing email.
     */
    public static List<Contact> findContactsMissingEmail(Id accountId) {
        if (accountId == null) {
            return new List<Contact>();
        }

        List<Contact> missingEmail = [
            SELECT Id, FirstName, LastName, Email
            FROM Contact
            WHERE AccountId = :accountId
            AND (Email = null OR Email = '')
        ];

        return missingEmail;
    }
}