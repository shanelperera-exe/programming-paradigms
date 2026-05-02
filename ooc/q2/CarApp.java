public class CarApp {
    public static void main(String[] args) {
        System.out.println("--- Default Car Details ---");
        Car car1 = new Car();
        car1.displayCarDetails();

        System.out.println("\n--- Parameterized Car Details ---");
        Car car2 = new Car("ABC-1234", "Toyota Corolla", 25000.50);
        car2.displayCarDetails();
    }
}
