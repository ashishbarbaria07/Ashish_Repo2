@isTest
public class PickleTest {

    // Test the pickleData and unpickleData methods
    @isTest
    static void testPickleAndUnpickle() {
        // Test pickling
        String pickled = Pickle.pickleData('Test Commit');
        System.assertEquals('Pickled: Test Commit', pickled);
        
        // Test unpickling
        String unpickled = Pickle.unpickleData(pickled);
        System.assertEquals('Test Commit', unpickled);
    }
}