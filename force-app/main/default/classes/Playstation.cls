public class Playstation {
    // Properties
    public String model { get; set; }
    public Decimal price { get; set; }
    public Boolean isAvailable { get; set; }

    // Constructor
    public Playstation(String model, Decimal price, Boolean isAvailable) {
        this.model = model;
        this.price = price;
        this.isAvailable = isAvailable;
    }

    // Method to apply a discount
    public void applyDiscount(Decimal discountPercentage) {
        if (discountPercentage > 0 && discountPercentage <= 100) {
            this.price -= (this.price * discountPercentage / 100);
        } else {
            throw new IllegalArgumentException('Discount percentage must be between 0 and 100.');
        }
    }

    // Method to check availability
    public String checkAvailability() {
        return isAvailable ? 'Available' : 'Out of Stock';
    }
}