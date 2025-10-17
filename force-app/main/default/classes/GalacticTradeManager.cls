public class GalacticTradeManager {

    // Method to add a planet and a resource it holds
    public static void registerPlanetAndResource(String planetName, Integer population, String resourceType, Integer quantity) {
        // Create a planet
        Planet__c planet = new Planet__c();
        planet.Planet_Name__c = planetName;
        planet.Population__c = population;

        // Create a resource
        Resource__c resource = new Resource__c();
        resource.Resource_Type__c = resourceType;
        resource.Quantity__c = quantity;

        // Insert both records
        insert new List<SObject>{ planet, resource };
    }
}