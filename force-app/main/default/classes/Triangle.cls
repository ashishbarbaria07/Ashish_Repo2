public class Triangle {
    // Method to update the FirstName field on Contact records
    public static void updateContactName(List<Contact> contacts) {
        for (Contact con : contacts) {
            con.FirstName = 'Triangle';  // Update FirstName to 'Triangle'
        }
        update contacts;  // Perform DML operation to save changes
    }
}