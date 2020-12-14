﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace TestmanagementLib.ViewModel
{
    public class CandidateViewModel
    {

        public int CandidateId { get; set; }

        [Required]
        [StringLength(250)]
        public string FirstName { get; set; }

        [Required]
        [StringLength(250)]
        public string LastName { get; set; }



        [Required]
        [EmailAddress(ErrorMessage = "Invalid Email Address")]

        public string Email { get; set; }


        [StringLength(250)]
        public string CurrentCompany { get; set; }


        [StringLength(250)]
        public string TechStack { get; set; }

        public int categoryId { get; set; }

        public int ExperienceLevelId { get; set; }



    }
}
