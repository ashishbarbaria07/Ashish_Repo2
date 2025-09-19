public class NameMixer {

    public static String mixNames(String name1, String name2) {
        Integer mid1 = name1.length() / 2;
        Integer mid2 = name2.length() / 2;

        String part1 = name1.substring(0, mid1);
        String part2 = name2.substring(mid2);
		// ashish barbaria
		// 123
		// a1234
        return part1 + part2;
    }
}