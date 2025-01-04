@isTest
public class BooksTest {
    @isTest
    static void testBooksClass() {
        // Create a book instance
        Books book = new Books('The Great Gatsby', 'F. Scott Fitzgerald', 1925);

        // Test if the properties are set correctly
        System.assertEquals('The Great Gatsby', book.title, 'Title mismatch');
        System.assertEquals('F. Scott Fitzgerald', book.author, 'Author mismatch');
        System.assertEquals(1925, book.publicationYear, 'Publication Year mismatch');

        // Test the getBookDetails method
        String expectedDetails = 'Title: The Great Gatsby, Author: F. Scott Fitzgerald, Year: 1925';
        System.assertEquals(expectedDetails, book.getBookDetails(), 'Book details mismatch');
    }
}