using System.IO.Compression;

public class Calculator
{
    public int Add(int a, int b)
    {
        return a + b;
    }

    public float Add(float a, float b)
    {
        return a + b;
    }
}
public class calc{
public static void Main(){

Calculator calculation = new Calculator();
int a = calculation.Add(12,14);
float b = calculation.Add(14.5f,15.8f);

Console.WriteLine(calculation.Add(15,12));
Console.WriteLine(calculation.Add(145.33f, 458.2f));
Console.WriteLine(a);
Console.WriteLine(b);
}
}