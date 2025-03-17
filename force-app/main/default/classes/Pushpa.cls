public class Pushpa {
    public String name { get; set; }
    public Integer strength { get; set; }
    public Boolean isDetermined { get; set; }

    // Constructor
    public Pushpa(String name, Integer strength, Boolean isDetermined) {
        this.name = name;
        this.strength = strength;
        this.isDetermined = isDetermined;
    }

    // Method to check determination
    public String checkDetermination() {
        if (isDetermined) {
            return name + ' never backs down!';
        } else {
            return name + ' needs more determination.';
        }
    }

    // Method to boost strength
    public void boostStrength(Integer increment) {
        if (increment > 0) {
            strength += increment;
        } else {
            throw new IllegalArgumentException('Strength increment must be positive.');
        }
    }
}