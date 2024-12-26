using BifpclProject.Models;
using BifpclProject.Services;
using Microsoft.AspNetCore.Mvc;

namespace BifpclProject.Controllers
{
    public class PublicNoticesController : Controller
    {
        private readonly ApplicationDbContext context;

        public PublicNoticesController(ApplicationDbContext context)
        {
            this.context = context;
        }
        public IActionResult AllNotices()
        {
            var notices= context.TblNotices.OrderByDescending(n=> n.NoticeId).ToList(); 
            return View(notices);
        }

      
        //public IActionResult SingleNotices(int id)
        //{
        //    var notice = context.NoticeTbl.Find(id);


        //    if (notice == null)
        //    {
        //        return RedirectToAction("Index", "AllNotices");
        //    }
        //    var noticeDto = new NoticeDto()
        //    {

        //        Description = notice.Description,

        //    };
        //    ViewData["noticeId"] = notice.Id;
        //    ViewData["FileName"] = notice.FilePath;
        //    ViewData["CreatedOn"] = notice.CreatedOn.ToString("MM/dd/yyyy");
        //    return View(noticeDto);
        //}

    }
}
