public class Factory {
    public static Product getProduct(String type) {
        if (type.equalsIgnoreCase("book")) {
            return new Book();
        } else if (type.equalsIgnoreCase("pen")) {
            return new Pen();
        }
        return null;
    }
}
