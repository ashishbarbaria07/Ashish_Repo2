@isTest
private class StringUtilityTest {

    @isTest static void testWithVowels() {
        String result = StringUtility.reverseIfVowelsPresent('abc');
        System.debug('Expected: cba | Got: ' + result);
        System.assertEquals('cba', result);
    }

    @isTest static void testWithoutVowels() {
        String result = StringUtility.reverseIfVowelsPresent('bcd');
        System.assertEquals('bcd', result);
    }

    @isTest static void testNullInput() {
        String result = StringUtility.reverseIfVowelsPresent(null);
        System.assertEquals(null, result);
    }
}