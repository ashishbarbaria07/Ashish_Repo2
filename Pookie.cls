public class Pookie {
    public String name { get; set; }
    public Integer age { get; set; }
    public String mood { get; set; }

    // Constructor
    public Pookie(String name, Integer age, String mood) {
        this.name = name;
        this.age = age;
        this.mood = mood;
    }

    // Method to check if Pookie is happy
    public String checkMood() {
        if (mood == 'Happy') {
            return name + ' is feeling great!';
        } else if (mood == 'Sad') {
            return name + ' could use some cheering up.';
        } else {
            return name + ' has an unknown mood.';
        }
    }

    // Method to celebrate Pookie's birthday
    public void celebrateBirthday() {
        age++;
        mood = 'Happy';
    }
}