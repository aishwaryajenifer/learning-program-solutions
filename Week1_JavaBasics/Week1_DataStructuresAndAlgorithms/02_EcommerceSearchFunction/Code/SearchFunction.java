import java.util.*;

public class SearchFunction {
    public static void main(String[] args) {
        
        List<String> products = Arrays.asList("Shirt", "Shoes", "Watch", "Phone");

        Scanner sc = new Scanner(System.in);
        System.out.print("Enter keyword to search: ");
        String keyword = sc.nextLine().toLowerCase(); 
        boolean found = false;
        System.out.println("\nSearch Results:");
        for (String product : products) {
            if (product.toLowerCase().contains(keyword)) {
                System.out.println("- " + product);
                found = true;
            }
        }

        if (!found) {
            System.out.println("No matching products found.");
        }

        sc.close(); 
    }
}
