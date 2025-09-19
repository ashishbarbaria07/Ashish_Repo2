public class DreamAnalyzer {

    // Predefined list of dream themes
    private static final List<String> themes = new List<String>{
        'Flying',
        'Falling',
        'Chased',
        'Lost',
        'Magical Powers',
        'Talking Animals',
        'Time Travel'
    };

    // Predefined emotion scores (out of 10)
    private static final Map<String, Integer> emotionImpact = new Map<String, Integer>{
        'Fear' => 8,
        'Joy' => 6,
        'Confusion' => 4,
        'Excitement' => 7,
        'Sadness' => 5
    };

    // Method to analyze a dream
    public static String analyzeDream(String theme, String emotion) {
        String result = '';

        // Check if the theme is known
        if (!themes.contains(theme)) {
            result += '⚠️ Unknown dream theme.\n';
        } else {
            result += '🌙 Theme recognized: ' + theme + '\n';
        }

        // Analyze emotional weight
        if (emotionImpact.containsKey(emotion)) {
            Integer score = emotionImpact.get(emotion);
            result += '💫 Emotional intensity score: ' + score + '/10\n';
        } else {
            result += '⚠️ Emotion not recognized.\n';
        }

        return result;
    }
}