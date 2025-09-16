public class VehicleHandler {

    // Method to add a new Vehicle record
    public static void addVehicle(String model, Integer year) {
        Vehicle__c v = new Vehicle__c();
        v.Model__c = model;
        v.Year__c = year;
        
        insert v;
    }
}