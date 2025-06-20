public class Main {
    public static void main(String[] args) {
        Product p1 = Factory.getProduct("book");
        Product p2 = Factory.getProduct("pen");

        p1.showDetails();
        p2.showDetails();
    }
}
