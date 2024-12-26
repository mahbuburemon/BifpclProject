using Microsoft.AspNetCore.Mvc.Rendering;
using System.ComponentModel.DataAnnotations;

namespace BifpclProject.Models
{
    public class DeptDto
    {
       
        public int Id { get; set; }
        [Required]
        public string Dept_Name { get; set; } = "";
        [Required]
        public string Dept_Code { get; set; } = "";


    }
}
