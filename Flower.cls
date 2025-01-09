public class Flower {
    // Properties of the flower
    public String name { get; set; }
    public String color { get; set; }
    public String type { get; set; } // Example: Rose, Tulip, Daisy

    // Constructor to initialize the Flower object
    public Flower(String name, String color, String type) {
        this.name = name;
        this.color = color;
        this.type = type;
    }

    // Method to display flower details
    public String displayDetails() {
        return 'Flower Name: ' + name + ', Color: ' + color + ', Type: ' + type;
    }
}
