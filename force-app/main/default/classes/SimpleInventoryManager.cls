public with sharing class SimpleInventoryManager {

    // Reduce quantity of a product
    public static void reduceStock(Id inventoryId, Integer qty) {
        if (inventoryId == null || qty <= 0) {
            throw new AuraHandledException('Invalid inventory ID or quantity.');
        }

        Inventory__c inv = [SELECT Id, ProductName__c, Quantity__c FROM Inventory__c WHERE Id = :inventoryId LIMIT 1];

        if (inv.Quantity__c < qty) {
            throw new AuraHandledException('Not enough stock for product: ' + inv.ProductName__c);
        }

        inv.Quantity__c -= qty;
        update inv;
    }

    // Increase quantity of a product
    public static void addStock(Id inventoryId, Integer qty) {
        if (inventoryId == null || qty <= 0) {
            throw new AuraHandledException('Invalid inventory ID or quantity.');
        }

        Inventory__c inv = [SELECT Id, ProductName__c, Quantity__c FROM Inventory__c WHERE Id = :inventoryId LIMIT 1];
        inv.Quantity__c += qty;
        update inv;
    }
}