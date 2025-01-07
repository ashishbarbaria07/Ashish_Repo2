public class Van {
    // Public property
    public String model { get; set; }
    public Integer capacity { get; set; }
    
    // Constructor
    public Van(String model, Integer capacity) {
        this.model = model;
        this.capacity = capacity;
    }
    
    // Method to get van details
    public String getVanDetails() {
        return 'Model: ' + model + ', Capacity: ' + capacity + ' passengers';
    }
}