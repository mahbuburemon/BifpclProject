using System.ComponentModel.DataAnnotations;

namespace BifpclProject.Models
{
    public class CareerDto
    {
        [Required]
        public string JobTitle { get; set; } = "";
        [Required]
        public string JobLocation { get; set; } = "";
        [Required]
        public string JobType { get; set; } = "";
        [Required]
        public int SalaryRange { get; set; }
        [Required]
        public string JobDescription { get; set; } = "";
        [Required]
        public string Responsibilities { get; set; } = "";
        [Required]
        public string Requirements { get; set; } = "";
        [Required]
        public DateTime ApplicationDeadline { get; set; }


    }
}
