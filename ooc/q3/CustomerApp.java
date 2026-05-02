import java.util.Scanner;

public class CustomerApp {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Enter Customer ID: ");
        int id = scanner.nextInt();
        scanner.nextLine(); // consume newline
        
        System.out.print("Enter Customer Name: ");
        String name = scanner.nextLine();
        
        System.out.print("Enter Units Consumed: ");
        int units = scanner.nextInt();
        
        Customer customer = new Customer(id, name, units);
        
        System.out.println("\nCustomer Bill Details:");
        customer.displayCustomerDetails();
        
        scanner.close();
    }
}
