using BifpclProject.Models;
using BifpclProject.Services;
using Microsoft.AspNetCore.Mvc;

namespace BifpclProject.Controllers
{
    public class CareerController : Controller
    {
        private readonly ApplicationDbContext context;

        public CareerController(ApplicationDbContext context)
        {
            this.context = context;
        }
        public IActionResult Index()
        {
            //var careers = context.Careers.ToList();
            //return View(careers);
            return View();
        }
        public IActionResult CreateCareer()
        {
           
            return View();
        }
        [HttpPost]
        public IActionResult CreateCareer(CareerDto careerDto)
        {
            if (!ModelState.IsValid)
            {
                return View(careerDto);
            }

            // save the new career in the database
            Career career = new Career()
            {
                JobTitle = careerDto.JobTitle,
                JobLocation = careerDto.JobLocation,
                JobType = careerDto.JobType,
                SalaryRange = careerDto.SalaryRange,
                JobDescription = careerDto.JobDescription,
                Responsibilities = careerDto.Responsibilities,
                Requirements = careerDto.Requirements,
                ApplicationDeadline = careerDto.ApplicationDeadline,
                CreatedBAt = DateTime.Now,
            };
            //context.Careers.Add(career);
            context.SaveChanges();

            return RedirectToAction("Index", "Career");
        }



        //public IActionResult ApplyCareer()
        //{
        //    var careers = context.Careers.ToList();
        //    return View(careers);
        //}
    }
}
