public class Motor {
    public String name;
    public Decimal power;

    // Constructor
    public Motor(String name, Decimal power) {
        this.name = name;
        this.power = power;
    }

    // Method to return motor info
    public String getInfo() {
        return 'Motor: ' + name + ', Power: ' + power + ' kW';
    }
}