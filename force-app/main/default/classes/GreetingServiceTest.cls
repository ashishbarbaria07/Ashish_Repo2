@isTest
private class GreetingServiceTest {
    @isTest
    static void testGetGreetingWithName() {
        String result = GreetingService.getGreeting('Alice');
        System.assertEquals('Hello, Alice!', result);
    }

    @isTest
    static void testGetGreetingWithoutName() {
        String result = GreetingService.getGreeting('');
        System.assertEquals('Hello, Guest!', result);
    }
}