public class Pickle {

    // Method to "pickle" (prepend "Pickled: " to input data)
    public static String pickleData(String inputData) {
        return 'Pickled: ' + inputData;
    }

    // Method to "unpickle" (remove "Pickled: " from input data)
    public static String unpickleData(String pickledData) {
        return pickledData.startsWith('Pickled: ') ? pickledData.substring(9) : pickledData;
    }
}