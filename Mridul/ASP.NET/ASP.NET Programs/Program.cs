// See https://aka.ms/new-console-template for more information

public class mainsClass
{
    public static void Main(string[] args)
    {
        SBI mridul = new SBI();
        mridul.createAccount();
        mridul.withdrawMoney();
        mridul.checkBalanace();
        mridul.passbookPrinting();
        mridul.changePin();
        mridul.miniStatement();
        mridul.howToCheckBalance();
        Console.WriteLine(mridul.variable);
        Console.WriteLine(mridul.variableInATMAbstractClass);
    }
}
public interface IBank
{
    void createAccount();
    void withdrawMoney();
    void checkBalanace();
    void addMoney();
    void passbookPrinting();
    void BankTransfer();
}


public abstract class ATM
{
    public abstract void changePin();
    public abstract void cashWithdrawl();
    public abstract void miniStatement();
    public abstract void fastCash();
    public abstract void checkBalance();
    public abstract void printPassbook();
    public void howToCheckBalance()
    {
        Console.WriteLine("Insert the ATM to the Slot\nEnter your Pin \nPress check balance");
    }
    public int variable = 15;
    public string variableInATMAbstractClass = "Variable in ATM";

}

public class SBI : ATM, IBank
{
    public void addMoney()
    {
        Console.WriteLine("Adding Money");
    }

    public void BankTransfer()
    {
        Console.WriteLine("Bank Transfer");
    }

    public override void cashWithdrawl()
    {
        Console.WriteLine("Cash Withdrawl");
    }

    public override void changePin()
    {
        Console.WriteLine("Change PIN");
    }

    public void checkBalanace()
    {
        Console.WriteLine("Check Balanace");
    }

    public override void checkBalance()
    {
        Console.WriteLine("Check Balance");
    }

    public void createAccount()
    {
        Console.WriteLine("Create Account");
    }

    public override void fastCash()
    {
        Console.WriteLine("fast cash");
    }

    public override void miniStatement()
    {
        Console.WriteLine("Mini Statement");
    }

    public void passbookPrinting()
    {
        Console.WriteLine("Passbook Printing");
    }

    public override void printPassbook()
    {
        Console.WriteLine("Passbook Printing");
    }

    public void withdrawMoney()
    {
        Console.WriteLine("Passbook Printing");
    }
}
