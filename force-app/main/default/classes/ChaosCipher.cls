public class ChaosCipher {

    // test 23456
    // Encrypt text using character shift
    public static String encrypt(String input, Integer shift) {
        String result = '';
        for (Integer i = 0; i < input.length(); i++) {
            Integer code = input.charAt(i) + shift;
            result += String.valueOf(code);
        }
        return result;
    }

    // Decrypt text using reverse shift
    public static String decrypt(String input, Integer shift) {
        String result = '';
        for (Integer i = 0; i < input.length(); i++) {
            Integer code = input.charAt(i) - shift;
            result += String.valueOf(code);
        }
        return result;
    }
}