public class Books {
    // Properties of a Book
    public String title { get; set; }
    public String author { get; set; }
    public Integer publicationYear { get; set; }

    // Constructor
    public Books(String title, String author, Integer publicationYear) {
        this.title = title;
        this.author = author;
        this.publicationYear = publicationYear;
    }

    // Method to get Book details
    public String getBookDetails() {
        return 'Title: ' + title + ', Author: ' + author + ', Year: ' + publicationYear;
    }
}