//using BifpclProject.Migrations;
using BifpclProject.Models;

namespace BifpclProject.Controllers
{
    internal class TblDepartments : Dept
    {
        public int DeptId { get; set; }
        public object DepartmentName { get; set; }
    }
}