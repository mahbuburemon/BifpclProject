using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BifpclProject.Models
{
    public class Notice
    {
        [Key]
        public int NoticeId { get; set; }

        [Required]
        public string Description { get; set; } = "";

        public DateTime CreatedAt { get; set; }

        
        public string FilePath { get; set; }
        public string Dept_Name { get; set; } = "";

        [ForeignKey("DeptId")]
        public int DeptId { get; set; }


        public virtual  Dept Department { get; set; }
    }
}
