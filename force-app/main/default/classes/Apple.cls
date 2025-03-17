public class Apple {
    public String color { get; set; }
    public Integer weight { get; set; }

    public Apple(String color, Integer weight) {
        this.color = color;
        this.weight = weight;
    }
//source
//kjkjj
    public String describe() {
        return 'This apple is ' + color + ' and weighs ' + weight + ' grams.';
    }
// this is for demo test - 2

// abc test
    public Boolean isEdible() {
        return weight > 0; // Simplified condition
    }


    public static String getAppleType(Integer weight) {
        if (weight > 200) {
            return 'Large Appledd';
        } else if (weight > 100) {
            return 'Medium Apple';
        } else if (weight > 0) {
            return 'Small Apple';
        } else {
            return 'Not an Apple';
        }
    }

}
