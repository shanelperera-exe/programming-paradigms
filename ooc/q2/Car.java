public class Car {
    private String regNumber;
    private String modelName;
    private double price;

    public Car() {
        this.regNumber = "Unknown";
        this.modelName = "Unknown";
        this.price = 0.0;
    }

    public Car(String regNumber, String modelName, double price) {
        this.regNumber = regNumber;
        this.modelName = modelName;
        this.price = price;
    }

    public String getRegNumber() {
        return regNumber;
    }

    public void setRegNumber(String regNumber) {
        this.regNumber = regNumber;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void displayCarDetails() {
        System.out.println("Registration Number: " + regNumber);
        System.out.println("Model Name: " + modelName);
        System.out.println("Price: $" + price);
    }
}
