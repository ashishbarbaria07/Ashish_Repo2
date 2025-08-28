public class Toy {
    // Properties
    public String name { get; set; }
    public String type { get; set; }
    public Decimal price { get; set; }

    // Constructor
    public Toy(String name, String type, Decimal price) {
        this.name = name;
        this.type = type;
        this.price = price;
    }

    // Method to display toy info
    public String getToyInfo() {
        return 'Toy Name: ' + name + ', Type: ' + type + ', Price: $' + price;
    }
}