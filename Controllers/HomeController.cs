using BifpclProject.Models;
using BifpclProject.Services;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace BifpclProject.Controllers
{
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext context;

        public HomeController(ApplicationDbContext context)
        {
            this.context = context;
        }

        public IActionResult Index()
        {
            var notice = context.TblNotices.OrderByDescending(n => n.NoticeId).Take(4).ToList();
            return View(notice);

        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
