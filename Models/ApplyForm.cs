using System.ComponentModel.DataAnnotations;

namespace BifpclProject.Models
{
    public class ApplyForm
    {
        public int Id { get; set; }  // Primary Key (Ensure this is included)

        public Career JobTitle { get; set; }  // Navigation property to Career
        public int JobTitleId { get; set; }   // Foreign Key to Career

        public string FirstName { get; set; }
        public string LastName { get; set; }


        public string FatherName { get; set; }
        public string MotherName { get; set; }
        public DateTime DateOfBirth { get; set; }
        //public int Age { get; set; }
        public string Religion { get; set; }
        public string Gender { get; set; }

        public int Nid { get; set; }
       
        public int PassportId { get; set; }
        
        public int PhnInfo { get; set; }
        
        public string MartialStatus { get; set; }
        public string Email { get; set; }

        //address
        public string CareOf { get; set; }

        public string Village { get; set; }
        public string HouseNo { get; set; }
        public string District { get; set; }
        public string PostOffice { get; set; }
        public int PostCode { get; set; }
        public string CareOfP { get; set; }
        public string VillageP { get; set; }
        public string HouseNoP { get; set; }
        public string DistrictP { get; set; }
        public string PostOfficeP { get; set; }
        public int PostCodeP { get; set; }


        // Academic Qualification Section ssc
        public string Examination { get; set; }
        public string Board { get; set; }
        public int Roll { get; set; }
        public int PassingYear { get; set; }
        public string Subject { get; set; }
        public double Result { get; set; }

        // Academic Qualification Section hsc
        public string Examination_H { get; set; }
        public string Board_H { get; set; }
        public int Roll_H { get; set; }
        public int PassingYear_H { get; set; }
        public string Subject_H { get; set; }
        public double Result_H { get; set; }



        // Academic Qualification Section bsc
        public string Degree { get; set; }

        public string Institution { get; set; }
        public int GraduationYear { get; set; }
        public string Major { get; set; }
        public double CGPA { get; set; }
        public string CourseDuration { get; set; }


        //jobexperience



        public string EmployeeOn { get; set; }
        public string OrganizationName { get; set; }
        public string Designation { get; set; }
        public string Orag_Address { get; set; }
        public string JobDescription { get; set; }
        public string DateToServices { get; set; }
        public string LengthodServicesTo { get; set; }

        // File Uploads (Binary Data)

        public string ImageFileName { get; set; }

        // CreatedBy User Reference (Foreign Key to ApplicationUser)

        public string CreatedById { get; set; }  // Foreign Key to ApplicationUser

    }
}
