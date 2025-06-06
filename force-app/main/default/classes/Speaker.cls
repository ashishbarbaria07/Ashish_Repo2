public class Speaker {
    
    // Property to store the speaker's name
    public String name { get; set; }
    
    // Constructor
    public Speaker(String speakerName) {
        this.name = speakerName;
    }
    // test review artifcat
    // Method to speak a message
    public String speak(String message) {
        return name + ' says: ' + message;
    }
}
