
import java.util.Scanner;
public class test {

    public static void main(String[] args) 
    {
        Scanner input = new Scanner(System.in);
        Car rent = new rented(input.nextInt(),input.next());
        Car per = new bought(input.nextInt(),input.next());
        Car car = new Car(input.nextInt(),input.next());
        System.out.println(rent.status());
        System.out.println(per.status());
        System.out.println(car.status());
        
    }
    
}
