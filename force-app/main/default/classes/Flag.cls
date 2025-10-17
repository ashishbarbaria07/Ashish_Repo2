public class Flag {
    // Properties
    public String country { get; set; }
    public String color { get; set; }
	// abc
	// 11111
    // Constructor
    // pic test
    public Flag(String country, String color) {
        this.country = country;
        this.color = color;
    }

    // Method to get flag info
    public String getFlagInfo() {
        return 'Flag of ' + country + ' has color: ' + color;
    }
}