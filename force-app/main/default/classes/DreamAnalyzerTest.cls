@isTest
public class DreamAnalyzerTest {

    @isTest
    static void testAnalyzeKnownThemeAndEmotion() {
        String result = DreamAnalyzer.analyzeDream('Flying', 'Joy');
        System.assert(result.contains('Theme recognized'), 'Should recognize the dream theme');
        System.assert(result.contains('Emotional intensity score: 6'), 'Should calculate correct emotion score');
    }

    @isTest
    static void testAnalyzeUnknownTheme() {
        String result = DreamAnalyzer.analyzeDream('Underwater Castle', 'Fear');
        System.assert(result.contains('⚠️ Unknown dream theme'), 'Should warn about unknown theme');
        System.assert(result.contains('Emotional intensity score: 8'), 'Should still evaluate known emotion');
    }

    @isTest
    static void testAnalyzeUnknownEmotion() {
        String result = DreamAnalyzer.analyzeDream('Time Travel', 'Curiosity');
        System.assert(result.contains('Theme recognized'), 'Should recognize the theme');
        System.assert(result.contains('⚠️ Emotion not recognized'), 'Should warn about unknown emotion');
    }

    @isTest
    static void testAnalyzeUnknownThemeAndEmotion() {
        String result = DreamAnalyzer.analyzeDream('Dream Within Dream', 'Shock');
        System.assert(result.contains('⚠️ Unknown dream theme'), 'Should warn about unknown theme');
        System.assert(result.contains('⚠️ Emotion not recognized'), 'Should warn about unknown emotion');
    }
}