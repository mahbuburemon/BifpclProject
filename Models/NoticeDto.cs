using Microsoft.AspNetCore.Http;
using System.ComponentModel.DataAnnotations;

namespace BifpclProject.Models
{
    public class NoticeDto
    {
        public int Id { get; set; }

        public int DeptId { get; set; }

        [Required]
        public string Description { get; set; } = "";
        public DateTime CreatedAt { get; set; }
        public string Dept_Name { get; set; } = "";

        public IFormFile? FilePath { get; set; }
  
    }
}
