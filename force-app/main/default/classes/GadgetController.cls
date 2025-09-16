public class GadgetController {
    
    // Method to create a new Gadget record
    public static void createGadget(String name, Decimal price) {
        Gadget__c newGadget = new Gadget__c();
        newGadget.Gadget_Name__c = name;
        newGadget.Price__c = price;
        
        insert newGadget;
    }
}