import java.util.Scanner;

public class StudentApp {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Student student = new Student();

        System.out.print("Enter Student ID: ");
        student.setStudentId(scanner.nextInt());
        scanner.nextLine(); // Consume newline

        System.out.print("Enter Name: ");
        student.setName(scanner.nextLine());

        System.out.print("Enter GPA: ");
        student.setGpa(scanner.nextDouble());

        System.out.println("\nStudent Details:");
        student.displayStudentDetails();

        scanner.close();
    }
}
