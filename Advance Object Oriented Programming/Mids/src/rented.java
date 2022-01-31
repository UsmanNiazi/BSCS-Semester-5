public class rented extends Car
{
    rented(int model,String color)
    {
        super(model,color);
    }
    String status()
    {
        return "Rented"; 
    }
}
