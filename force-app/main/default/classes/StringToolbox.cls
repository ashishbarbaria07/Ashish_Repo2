public class StringToolbox {

    // Capitalizes the first letter of a word
    public static String capitalize(String input) {
        if (String.isBlank(input)) return '';
        return input.substring(0, 1).toUpperCase() + input.substring(1).toLowerCase();
    }

    // Counts the number of vowels in a strings in a list
    // 12345
    public static Integer countVowels(String input) {
        Integer count = 0;
        String lower = input.toLowerCase();
        for (Integer i = 0; i < lower.length(); i++) {
            String ch = lower.substring(i, i + 1);
            if ('aeiou'.contains(ch)) count++;
        }
        return count;
    }
}