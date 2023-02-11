using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Collections
{
    
    class Product
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public decimal Price { get; set; }
    }

    class Program
    {
        static void Main(string[] args)
        {
            List<Product> products = new List<Product>();

            for (int i = 0; i < 10; i++)
            {
                Console.WriteLine("Enter details for product {0}:", i + 1);
                Console.Write("Product ID: ");
                int Pid = Convert.ToInt32(Console.ReadLine());
                Console.Write("Product Name: ");
                string Pname = Console.ReadLine();
                Console.Write("Price: ");
                decimal Pprice = Convert.ToDecimal(Console.ReadLine());
                products.Add(new Product { ProductId = Pid, ProductName = Pname, Price = Pprice });
                Console.WriteLine();
            }

            products.Sort((p1, p2) => p1.Price.CompareTo(p2.Price));

            Console.WriteLine("Sorted Products by Price:");
            foreach (Product prod in products)
            {
                Console.WriteLine("Product ID: {0} | Product Name: {1} | Price: {2}", prod.ProductId, prod.ProductName, prod.Price);
            }
            Console.ReadLine();
        }
    }

}
