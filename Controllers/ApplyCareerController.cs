using BifpclProject.Services; // Assuming ApplicationDbContext is in this namespace
using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace BifpclProject.Controllers
{
    public class ApplyCareerController : Controller
    {
        private readonly ApplicationDbContext context;

        
        public ApplyCareerController(ApplicationDbContext context)
        {
            this.context = context;
        }

        // Index action to retrieve career data from the database
        public IActionResult Create()
        {
          
            // Check if careers is null or empty, then return the view with an empty list
            return View();
        }
    }
}
