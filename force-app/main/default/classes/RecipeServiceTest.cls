@isTest
public class RecipeServiceTest {
    
    @isTest
    static void testCreateRecipe() {
        // Call the method to insert a recipe
        RecipeService.createRecipe('Pasta Primavera', 'Pasta, vegetables, olive oil, garlic', 30);
        
        // Query the inserted record
        Recipe__c r = [SELECT Name, Ingredients__c, Prep_Time__c FROM Recipe__c WHERE Name = 'Pasta Primavera' LIMIT 1];

        // Assertions
        // Assertions news
        System.assertEquals('Pasta, vegetables, olive oil, garlic', r.Ingredients__c);
        System.assertEquals(30, r.Prep_Time__c);
    }
}