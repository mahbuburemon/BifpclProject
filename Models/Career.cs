namespace BifpclProject.Models
{
    public class Career
    {
        public int Id { get; set; }
        public string JobTitle { get; set; } = "";
        public string JobTitleId { get; set; } = "";

        public string JobLocation { get; set; } = "";
        public string JobType { get; set; } = "";
        public int SalaryRange { get; set; }
        public string JobDescription { get; set; } = "";
        public string Responsibilities { get; set; } = "";
        public string Requirements { get; set; } = "";
        public DateTime ApplicationDeadline { get; set; }
        public string ContactEmail { get; set; } = "";

       
        public DateTime CreatedBAt { get; set; }
    }
}
