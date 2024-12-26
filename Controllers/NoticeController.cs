//using BifpclProject.Migrations;
using BifpclProject.Models;
using BifpclProject.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System;
using System.Collections.Generic;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;

namespace BifpclProject.Controllers
{

    [Route("/Admin/[controller]/{action=Index}/{id?}")]
    public class NoticeController : Controller
    {
        private readonly ApplicationDbContext context;
        private readonly IWebHostEnvironment environment;
        private readonly int pageSize = 5;

        public NoticeController(ApplicationDbContext context , IWebHostEnvironment environment)
        {
            this.context = context;
            this.environment = environment;
        }
        public IActionResult Index(int pageIndex, string? search)
        {
            IQueryable<Notice> query = context.TblNotices;
            query = query.OrderByDescending(n => n.NoticeId);
            var dept = context.TblDepartments.ToList();
            ViewBag.Departments = dept; // Pass the departments list to the view

            // search functionality
            if (!string.IsNullOrEmpty(search))
            {
                query = query.Where(n => n.Description.Contains(search) );
            }

            //pagination
            if (pageIndex < 1)
            {
                pageIndex = 1;
            }
            decimal count = query.Count();
            int totalPages = (int)Math.Ceiling(count / pageSize);
            query = query.Skip((pageIndex - 1) * pageSize).Take(pageSize);

            var notices = query.ToList();


            ViewData["PageIndex"] = pageIndex;
            ViewData["TotalPages"] = totalPages;
            ViewData["Search"] = search ?? "";


            return View(notices);
        }




        public IActionResult Create()

        {

            var dept = context.TblDepartments.ToList();
            ViewBag.Departments = dept; // Pass the departments list to the view
            return View();




        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(NoticeDto noticeDto)
        {
            if (noticeDto.FilePath == null)
            {
                ModelState.AddModelError("FilePath", "The file is required.");
            }

            if (!ModelState.IsValid)
            {
                return View(noticeDto);
            }

       


            //// save the image file
            string newFileName = DateTime.Now.ToString("yyyyMMddHHmmssfff");
            newFileName += Path.GetExtension(noticeDto.FilePath!.FileName);

            string FileFullPath = environment.WebRootPath + "/NoticeFile/" + newFileName;
            using (var stream = System.IO.File.Create(FileFullPath))
            {
                noticeDto.FilePath.CopyTo(stream);
            }

            // save the new product in the database
            Notice notice = new Notice
            {

                //Department = (noticeDto.Department),
                Description = noticeDto.Description,
                FilePath = FileFullPath,
                CreatedAt = DateTime.Now,
                DeptId = noticeDto.DeptId,
                Dept_Name=noticeDto.Dept_Name,
            };

            //notice.DeptId = 1;
         

            context.TblNotices.Add(notice);
            context.SaveChanges();

            return RedirectToAction("Index", "Notice");

        }



        //Edit section


        public IActionResult Edit(int Id)
        {
            var notice = context.TblNotices.Find(Id);
            if (notice == null)
            {
                return RedirectToAction("Index", "Notice");


            }
            //Create productDto from product
            var noticeDto = new NoticeDto()
            {
         
                Description = notice.Description,

            };
            ViewData["noticeId"] = notice.NoticeId;
            ViewData["FilePath"] = notice.FilePath;
            ViewData["CreatedAt"] = notice.CreatedAt.ToString("MM/dd/yyyy");

            return View(noticeDto);
        }




        [HttpPost]
        public IActionResult Edit(int Id, NoticeDto noticeDto)
        {
            var notice = context.TblNotices.Find(Id);

            if (notice == null)
            {
                return RedirectToAction("Index", "Notice");
            }


            if (!ModelState.IsValid)
            {
                ViewData["NoticeId"] = notice.NoticeId;
                ViewData["FilePath"] = notice.FilePath;
                ViewData["CreatedAt"] = notice.CreatedAt.ToString("MM/dd/yyyy");

                return View(noticeDto);
            
            }


            // update the image file if we have a new image file
            string newFileName = notice.FilePath;
            if (noticeDto.FilePath != null)
            {
                newFileName = DateTime.Now.ToString("yyyyMMddHHmmssfff");
                newFileName += Path.GetExtension(noticeDto.FilePath.FileName);

                string FileFullPath = environment.WebRootPath + "/NoticeFile/" + newFileName;
                using (var stream = System.IO.File.Create(FileFullPath))
                {
                    noticeDto.FilePath.CopyTo(stream);
                }

                // delete the old image
                string oldFileFullPath = environment.WebRootPath + "/NoticeFile/" + notice.FilePath;
                System.IO.File.Delete(oldFileFullPath);
            }


            // update the product in the database

            notice.Description = noticeDto.Description;
            //notice.FilePath = newFileName;


            context.SaveChanges();

            return RedirectToAction("Index", "Notice");
        }

        // delete product 
        public IActionResult Delete(int id)
        {
            var notice = context.TblNotices.Find(id);

            if (notice == null)
            {
                return RedirectToAction("Index", "Notice");
            }
            //string FileFullPath = environment.WebRootPath + "/NoticeFile/" + notice.FilePath;
         //   System.IO.File.Delete(FileFullPath);

            context.TblNotices.Remove(notice);
            context.SaveChanges(true);

            return RedirectToAction("Index", "Notice");
        }

    }
}
