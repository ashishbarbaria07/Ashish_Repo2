public class House {
    public String address { get; set; }
    public Integer numberOfRooms { get; set; }

    // Constructor
    public House(String address, Integer numberOfRooms) {
        this.address = address;
        this.numberOfRooms = numberOfRooms;
    }

    // Method to check if the house is big
    public Boolean isBigHouse() {
        return numberOfRooms > 5;
    }
}