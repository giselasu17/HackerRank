class MyBook: Book
{
    private int price;
        
    public MyBook(string title, string author, int p)
                  :base(title, author) 
    {
        price = p;            
    }
        
    public override void display()
    {
        Console.WriteLine("Title: " + title);
        Console.WriteLine("Author: " + author);
        Console.WriteLine("Price: " + price);
    }
}
