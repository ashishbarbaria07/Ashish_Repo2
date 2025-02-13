@isTest
private class AppleTest {

    // ... (rest of the class)

    @isTest
    static void testAppleEdible() {
        Apple edibleApple = new Apple('red', 100);
        System.assertEquals(true, edibleApple.isEdible()); // Changed to assertEquals

        Apple inedibleApple = new Apple('green', 0);
        System.assertEquals(false, inedibleApple.isEdible()); // Changed to assertEquals
    }

    // ... (rest of the class)

}