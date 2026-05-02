public class Customer {
    private int customerId;
    private String name;
    private int unitsConsumed;

    public Customer(int customerId, String name, int unitsConsumed) {
        this.customerId = customerId;
        this.name = name;
        this.unitsConsumed = unitsConsumed;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getUnitsConsumed() {
        return unitsConsumed;
    }

    public void setUnitsConsumed(int unitsConsumed) {
        this.unitsConsumed = unitsConsumed;
    }

    public double calculateBill() {
        double billAmount = 0;
        
        if (unitsConsumed <= 100) {
            billAmount = unitsConsumed * 20;
        } else if (unitsConsumed <= 300) {
            billAmount = (100 * 20) + ((unitsConsumed - 100) * 30);
        } else {
            billAmount = (100 * 20) + (200 * 30) + ((unitsConsumed - 300) * 40);
        }
        
        return billAmount;
    }

    public void displayCustomerDetails() {
        System.out.println("Customer ID: " + customerId);
        System.out.println("Name: " + name);
        System.out.println("Units Consumed: " + unitsConsumed);
        System.out.println("Bill Amount: Rs. " + calculateBill());
    }
}
