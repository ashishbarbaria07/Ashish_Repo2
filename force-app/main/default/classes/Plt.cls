public class Plt {

    // Example property
    public String message { get; set; }

    // Constructor
    public Plt() {
        message = 'Hello from Plt class!';
    }

    // Example method
    public String greetUser(String userName) {
        return 'Hello, ' + userName + '! Welcome to the Plt class.';
    }

    // Static method
    public static String getWelcomeMessage() {
        return 'Welcome to the Plt class – your starting point!';
    }
}