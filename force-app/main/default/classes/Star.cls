public class Star {

    public String name;
    public Integer magnitude;
    private String constellation; // Added constellation

    // Constructor (modified to include constellation)
    public Star(String starName, Integer starMagnitude, String starConstellation) {
        this.name = starName;
        this.magnitude = starMagnitude;
        this.constellation = starConstellation;
    }

    // Method to display star information (modified)
    public void displayStarInfo() {
        System.debug('Star Name: ' + this.name);
        System.debug('Magnitude: ' + this.magnitude);
        System.debug('Constellation: ' + this.constellation); // Added constellation
    }

    // Static method (unchanged)
    public static String getStarClassification(Integer magnitude) {
        if (magnitude < 0) {
            return 'Bright Star';
        } else if (magnitude < 3) {
            return 'Visible Star';
        } else {
            return 'Faint Star';
        }
    }

    // Instance method (unchanged)
    public Boolean isBrighterThan(Star otherStar) {
        return this.magnitude < otherStar.magnitude;
    }

    // Instance method (modified)
    public String getDescription() {
        return 'This is the ' + this.name + ' star in the ' + this.constellation + ' constellation. Its magnitude is ' + this.magnitude + '.';
    }


    // New method to get constellation
    public String getConstellation() {
        return this.constellation;
    }

    // New method to set constellation (example of a setter)
    public void setConstellation(String newConstellation) {
        this.constellation = newConstellation;
    }

}