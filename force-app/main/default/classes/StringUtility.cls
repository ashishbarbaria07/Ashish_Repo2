public class StringUtility {
    public static String reverseIfVowelsPresent(String input) {
        if (input == null) return null;

        String lower = input.toLowerCase();
        if (lower.contains('a') || lower.contains('e') || lower.contains('i') || lower.contains('o') || lower.contains('u')) {
            String reversed = '';
            for (Integer i = input.length() - 1; i >= 0; i--) {
                reversed += input.substring(i, i + 1);
            }
            return reversed;
        }
        return input;
    }
}