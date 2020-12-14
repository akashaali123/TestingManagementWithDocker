﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace TestmanagementLib.Model
{
    public class TblCandidate
    {
        public TblCandidate()
        {
            IsActive = true;
        }

        [Key]
        public int CandidateId { get; set; }


        [Required]
        [StringLength(250)]
        public string FirstName { get; set; }

        [Required]
        [StringLength(250)]
        public string LastName { get; set; }

        
        [Required]
        [EmailAddress(ErrorMessage = "Invalid Email Address")]
        [StringLength(200)]
        public string Email { get; set; }


        [StringLength(250)]
        public string CurrentCompany { get; set; }


        [StringLength(250)]
        public string TechStack { get; set; }

        public bool IsActive { get; set; }

        public int? VacancyId { get; set; }


        [StringLength(500)]
        public string CreatedBy { get; set; }

        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}")]
        [DataType(DataType.DateTime)]
        public DateTime CreatedDate { get; set; }


        [StringLength(500)]
        public string UpdatedBy { get; set; }

        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}")]
        [DataType(DataType.DateTime)]
        public DateTime? UpdatedDate { get; set; }

        public int? ExperienceLevelId { get; set; }

        public int? CategoryId { get; set; }



    }
}
