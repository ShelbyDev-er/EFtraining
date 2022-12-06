using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace EFTraining.models
{
    public class databaseContext : DbContext
    {
        private const string connectString = @"Server=.\SQLEXPRESS;Database=TrainingEntity;Trusted_Connection=True;";
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
            optionsBuilder.UseSqlServer(connectString);
            optionsBuilder.UseMySQL(connectString);
        }
    }
}
