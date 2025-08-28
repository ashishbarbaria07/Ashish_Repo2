public class Ginger {
    
    // A simple property
    public String name { get; set; }

    // Constructor
    public Ginger(String name) {
        this.name = name;
    }

    // A simple method that returns a greeting
    public String getGreeting() {
        return 'Hello from Ginger! My name is ' + name;
    }

}