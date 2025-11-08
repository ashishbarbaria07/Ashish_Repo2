@IsTest
private class SimpleInventoryManagerTest {

    @IsTest
    static void testReduceStock() {
        Inventory__c item = new Inventory__c(ProductName__c = 'Nano Widget', Quantity__c = 50);
        insert item;

        Test.startTest();
        SimpleInventoryManager.reduceStock(item.Id, 20);
        Test.stopTest();

        Inventory__c updated = [SELECT Quantity__c FROM Inventory__c WHERE Id = :item.Id];
        System.assertEquals(30, updated.Quantity__c);
    }

    @IsTest
    static void testAddStock() {
        Inventory__c item = new Inventory__c(ProductName__c = 'Nano Widget', Quantity__c = 30);
        insert item;

        Test.startTest();
        SimpleInventoryManager.addStock(item.Id, 25);
        Test.stopTest();

        Inventory__c updated = [SELECT Quantity__c FROM Inventory__c WHERE Id = :item.Id];
        System.assertEquals(55, updated.Quantity__c);
    }

    @IsTest
    static void testInvalidOperations() {
        Inventory__c item = new Inventory__c(ProductName__c = 'Nano Widget', Quantity__c = 10);
        insert item;

        // Test reducing more than available stock
        try {
            SimpleInventoryManager.reduceStock(item.Id, 20);
            System.assert(false, 'Expected exception for insufficient stock');
        } catch (AuraHandledException e) {
            System.assert(e.getMessage().contains('Not enough stock'));
        }

        // Test invalid quantity
        try {
            SimpleInventoryManager.addStock(item.Id, -5);
            System.assert(false, 'Expected exception for invalid quantity');
        } catch (AuraHandledException e) {
            System.assert(e.getMessage().contains('Invalid inventory ID or quantity'));
        }
    }
}