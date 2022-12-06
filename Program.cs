using EFTraining.models;
using Microsoft.EntityFrameworkCore;
using System.Xml.Linq;

namespace EFTraining
{
    class Program
    {
        static void CreateDatabase()
        {
            using var dbContext = new databaseContext();
            string dbName = dbContext.Database.GetDbConnection().Database;

            var rs = dbContext.Database.EnsureCreated();

            if(rs)
            {
                Console.WriteLine($"tao db {dbName} thanh cong.");
            }
            else
            {
                Console.WriteLine($"tao db {dbName} that bai!");
            }
        }
        static void Main()
        {
            Console.WriteLine($"tao db thanh cong.");
            CreateDatabase();
        }
    }
}