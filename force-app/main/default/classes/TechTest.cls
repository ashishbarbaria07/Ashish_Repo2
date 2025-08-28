@isTest
public class TechTest {
    
    @isTest
    static void testGetWelcomeMessage() {
        // Arrange
        String testName = 'John';
        
        // Act
        String result = Tech.getWelcomeMessage(testName);
        
        // Assert
        System.assertEquals('Welcome to the Tech world, John!', result, 'The welcome message should match the expected output.');
    }
}