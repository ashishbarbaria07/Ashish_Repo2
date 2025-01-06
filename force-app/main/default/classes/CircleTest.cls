@isTest
public class CircleTest {

    @isTest
    static void testCalculateArea() {
        Double radius = 5.0;
        Double expectedArea = 3.14159 * radius * radius;  // Expected result: 78.53975
        Double actualArea = Circle.calculateArea(radius);  // Call the method
        
        // Compare the values directly without complicating the check
        System.assertEquals(expectedArea, actualArea);  // Check if they match
    }

    @isTest
    static void testCalculateCircumference() {
        Double radius = 5.0;
        Double expectedCircumference = 2 * 3.14159 * radius;  // Expected result: 31.4159
        Double actualCircumference = Circle.calculateCircumference(radius);  // Call the method
        
        // Direct comparison again
        System.assertEquals(expectedCircumference, actualCircumference);  // Check if they match
    }
}