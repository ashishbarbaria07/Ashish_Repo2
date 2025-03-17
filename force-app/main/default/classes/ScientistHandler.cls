public class ScientistHandler {
    public static void insertScientist(String nasa, String isro) {
        try {
            // Create a new Scientist__c record
            Scientist__c scientist = new Scientist__c();

            // Truncate NASA__c value to 10 characters if necessary
            if (nasa.length() > 10) {
                nasa = nasa.substring(0, 10);
            }
            scientist.NASA__c = nasa;

            // Truncate ISRO__c value to 10 characters if necessary
            if (isro.length() > 10) {
                isro = isro.substring(0, 10);
            }
            scientist.ISRO__c = isro;

            // Fetch and truncate custom label value to 10 characters if necessary
            String urlValue = System.Label.Scientist_URL;
            if (urlValue.length() > 10) {
                urlValue = urlValue.substring(0, 10);
            }
            scientist.Scientist_URL__c = urlValue;

            // Insert the record
            insert scientist;
            System.debug('Scientist record inserted successfully: ' + scientist);
        } catch (Exception e) {
            // Handle any exceptions
            System.debug('Error inserting Scientist record: ' + e.getMessage());
        }
    }
}