public abstract class Employee
{
    public string Name { get; set; }
    public int EmployeeId { get; set; }
    public abstract int calculateSalary();
}
class Developer : Employee
{
    public int monthlySalary { get; set; }
    public Developer(int salary){
        monthlySalary = salary;
    }
    public override int calculateSalary()
    {
        return monthlySalary;
    }
}
class Intern : Employee
{
    public int hourlyRate { get; set; }
    public int hoursWorked { get; set; }
    public Intern(int rate, int worked){
        hourlyRate = rate;
        hoursWorked = worked;
    }
    public override int calculateSalary()
    {
        return hourlyRate * hoursWorked;
    }
}
class Program
{
    public static void Main()
    {
        Developer developer = new Developer(1000000);
        developer.Name = "Mridul Thakur";
        developer.EmployeeId = 101;
    
        Intern intern = new Intern(150,20);
        intern.Name = "Ankush";
        intern.EmployeeId = 102;

        Console.WriteLine("Employee ID: " + developer.EmployeeId);
        Console.WriteLine("Name: " + developer.Name);
        Console.WriteLine("Salary: " + developer.calculateSalary());
        Console.WriteLine("Employee ID: " + intern.EmployeeId);
        Console.WriteLine("Name: " + intern.Name);
        Console.WriteLine("Salary: " + intern.calculateSalary());
    }
}
