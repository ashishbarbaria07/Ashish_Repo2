public class RecipeService {
    
    // Method to create a new Recipe
    public static void createRecipe(String name, String ingredients, Integer prepTime) {
        Recipe__c recipe = new Recipe__c();
        recipe.Name = name;
        recipe.Ingredients__c = ingredients;
        recipe.Prep_Time__c = prepTime;

        insert recipe;
    }
}