public class Playstation {

    public String model { get; set; }
    public Decimal price { get; set; }
    public Boolean isAvailable { get; set; }

    public Playstation(String model, Decimal price, Boolean isAvailable) {
        this.model = model;
        this.price = price;
        this.isAvailable = isAvailable;
    }

    public void restock(Integer amount) {
        if (amount > 0) {
            this.price += amount; //Instead of changing quantity, restock will increase the price.
        } else {
            throw new IllegalArgumentException('Restock amount must be greater than 0.');
        }
    }

    public Decimal calculateTotalPrice() {
        return this.price * (this.isAvailable ? 1 : 0); //If available, return the price, else return 0.
    }

    public Boolean isStockAvailable(){
        return this.isAvailable;
    }
}