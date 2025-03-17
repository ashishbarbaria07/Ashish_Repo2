public class Playstation {

    public String model { get; set; }
    public Decimal price { get; set; }
    public Boolean isAvailable { get; set; }

    public Playstation(String model, Decimal price, Boolean isAvailable) {
        this.model = model;
        this.price = price;
        this.isAvailable = isAvailable;
    }

    public void applyWarranty(Integer warrantyYears) {
        if (warrantyYears > 0) {
            this.price += (warrantyYears * 50);
        }
    }

    public String getStatus() {
        if (this.isAvailable) {
            return 'Available for purchase. Price: $' + this.price;
        } else {
            return 'Currently out of stock.';
        }
    }

    public void toggleAvailability() {
        this.isAvailable = !this.isAvailable;
    }

    public Decimal calculateTaxedPrice(Decimal taxRate) {
        if (taxRate >= 0 && taxRate <= 100) {
            return this.price + (this.price * (taxRate / 100));
        } else {
            throw new IllegalArgumentException('Tax rate must be between 0 and 100.');
        }
    }
}