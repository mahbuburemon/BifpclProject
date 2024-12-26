//using BifpclProject.Migrations;
using BifpclProject.Models;
using Microsoft.EntityFrameworkCore;


namespace BifpclProject.Services
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext()
        {
        }

        public ApplicationDbContext(DbContextOptions options) : base(options)
        {
            
        }
        //public DbSet<Career> Careers { get; set; }
        //public DbSet<ApplyForm> ApplyForm { get; set; }
       
        public DbSet<Notice> TblNotices { get; set; }
        public DbSet<Dept> TblDepartments { get; set; }



    
    }
}
