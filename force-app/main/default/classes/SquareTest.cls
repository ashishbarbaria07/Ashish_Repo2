@isTest
public class SquareTest {
    @isTest
    static void testCalculateSquare() {
        // Test case 1: Positive number
        Integer result1 = Square.calculateSquare(5);
        System.assertEquals(25, result1, 'The square of 5 should be 25');

        // Test case 2: Zero
        Integer result2 = Square.calculateSquare(0);
        System.assertEquals(0, result2, 'The square of 0 should be 0');

        // Test case 3: Negative number
        Integer result3 = Square.calculateSquare(-3);
        System.assertEquals(9, result3, 'The square of -3 should be 9');
    }
}