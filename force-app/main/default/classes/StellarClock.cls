public class StellarClock {

    // Returns current time in a custom format
    public static String getFormattedTime() {
        Datetime now = Datetime.now();
        return now.format('yyyy-MM-dd HH:mm:ss');
    }

    // Adds hours to current time and returns the result
    public static Datetime travelInTime(Integer hours) {
        return Datetime.now().addHours(hours);
        // uat 123456
        // ott 1212
    }

    // Converts given datetime to a friendly string
    public static String describeTime(Datetime dt) {
        return 'It is ' + dt.format('h:mm a') + ' on ' + dt.format('MMMM d, yyyy');
    }
}