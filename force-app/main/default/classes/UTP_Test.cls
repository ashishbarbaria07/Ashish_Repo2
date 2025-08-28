@isTest
private class UTP_Test {
    @isTest
    static void testSayHello() {
        UTP obj = new UTP();
        String result = obj.sayHello();
        System.assertEquals('Hello World', result);
    }
}