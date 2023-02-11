using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StructsAssignment
{
    using System;

    struct Books
    {
        private string Title;
        private string Author;
        private string Subject;
        private int Book_Id;

        public void GetValues(string t, string a, string s, int id)
        {
            Title = t;
            Author = a;
            Subject = s;
            Book_Id = id;
        }

        public void ShowValues()
        {
            Console.WriteLine("Title: {0}", Title);
            Console.WriteLine("Author: {0}", Author);
            Console.WriteLine("Subject: {0}", Subject);
            Console.WriteLine("Book ID: {0}", Book_Id);
        }
    }

    class TestBooks
    {
        static void Main(string[] args)
        {
            Books Book1 = new Books();
            Books Book2 = new Books();
            Books Book3 = new Books();

            Book1.GetValues("Think Like Monk", "Jay Shetty", "Finding Peace and Purpose In life", 25634);
            Book2.GetValues("Almanack", "Naval Ravikant", "A guide to WEALTH", 83456);
            Book3.GetValues("The God Equation", "Michio Kaku", "Cosmology,Maths and Physics", 263694);

            Console.WriteLine("Book 1 Information:");
            Book1.ShowValues();

            Console.WriteLine("\nBook 2 Information:");
            Book2.ShowValues();

            Console.WriteLine("\nBook 2 Information:");
            Book3.ShowValues();

            Console.ReadLine();
        }
    }

}
