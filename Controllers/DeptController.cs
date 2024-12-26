//using BifpclProject.Migrations;
using BifpclProject.Models;
using BifpclProject.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Hosting;
using System;

namespace BifpclProject.Controllers
{
    public class DeptController : Controller
    {
        private readonly ApplicationDbContext context;

        public DeptController(ApplicationDbContext context)
        {
            this.context = context;
        }
        public IActionResult Index()
        {
            var dept = context.TblDepartments.ToList();
            return View(dept);
        }

        public IActionResult CreateDept()
        {
            return View();
        }

        [HttpPost]
        public IActionResult CreateDept(DeptDto deptDto)
        {
           

            if (!ModelState.IsValid)
            {
                return View(deptDto);
            }


            // save the new product in the database
            Dept dept = new Dept()
            {

               Dept_Name = deptDto.Dept_Name,
               Dept_Code= deptDto.Dept_Code
             
            };


            context.TblDepartments.Add(dept);
            context.SaveChanges();

            return RedirectToAction("Index", "Dept");

        }

        //Edit section


        public IActionResult Edit(int id)
        {
            var dept = context.TblDepartments.Find(id);
            if (dept == null)
            {
                return RedirectToAction("Index", "Dept");


            }
            //Create productDto from product
            var deptDto = new DeptDto()
            {

                Dept_Name = dept.Dept_Name,
                Dept_Code= dept.Dept_Code

            };
            ViewData["DeptId"] = dept.DeptId;
           

            return View(deptDto);
        }




        [HttpPost]
        public IActionResult Edit(int id, DeptDto deptDto)
        {
            var dept = context.TblDepartments.Find(id);

            if (dept == null)
            {
                return RedirectToAction("Index", "Dept");
            }


            if (!ModelState.IsValid)
            {
                ViewData["DeptId"] = dept.DeptId;
         

                return View(deptDto);

            }

            // update the product in the database

            dept.Dept_Name = deptDto.Dept_Name;
            dept.Dept_Code = deptDto.Dept_Code;



            context.SaveChanges();

            return RedirectToAction("Index", "Dept");
        }
        // delete product 
        public IActionResult Delete(int id)
        {
            var dept = context.TblDepartments.Find(id);

            if (dept == null)
            {
                return RedirectToAction("Index", "Dept");
            }
        

            context.TblDepartments.Remove(dept);
            context.SaveChanges(true);

            return RedirectToAction("Index", "Dept");
        }
    }
}
