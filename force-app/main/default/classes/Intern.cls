public class Intern {
    // Method to update the Title field on Contact records
    public static void updateContactTitle(List<Contact> contacts) {
        for (Contact con : contacts) {
            con.Title = 'Intern';  // Update Title to 'Intern'
        }
        update contacts;  // Perform DML operation to save changes
    }
}