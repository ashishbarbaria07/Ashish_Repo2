public class Apex1 {

    public static Decimal calculatePrice(Decimal originalPrice, Decimal discountPercent) {
        Decimal discountAmount = (originalPrice * discountPercent) / 100;
        Decimal finalPrice = originalPrice - discountAmount;
        return finalPrice;
    }

}