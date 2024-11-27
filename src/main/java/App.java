public class App {
    public static void main(String[] args) throws InterruptedException {
        System.out.println("Hello from Maven inside a Docker container!");
        Thread.sleep(5000); // Ждем 5 секунд
        System.out.println("Application finished.");
    }
}

