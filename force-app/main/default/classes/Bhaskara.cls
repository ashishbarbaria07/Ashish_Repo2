public class Bhaskara {
    
    // Method to calculate the roots of ax^2 + bx + c = 0
    public static void calculateRoots(Double a, Double b, Double c) {
        if (a == 0) {
            System.debug('This is not a quadratic equation.');
            return;
        }
        ////// hashtag 12
        Double delta = (b * b) - (4 * a * c);
        
        if (delta > 0) {
            Double root1 = (-b + Math.sqrt(delta)) / (2 * a);
            Double root2 = (-b - Math.sqrt(delta)) / (2 * a);
            System.debug('Two real roots: ' + root1 + ' and ' + root2);
        } else if (delta == 0) {
            Double root = -b / (2 * a);
            System.debug('One real root: ' + root);
        } else {
            System.debug('No real roots. Delta is negative.');
        }
    }
}
