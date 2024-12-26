using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BifpclProject.Models
{
    public class Dept
    {
        [Key]
        public int DeptId { get; set; }

        //public int Id { get; set; }

        public string Dept_Name { get; set; } = "";
        public string Dept_Code { get; set; } = "";


    }
}
