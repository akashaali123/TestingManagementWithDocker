﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace TestmanagementLib.ViewModel
{
    public class TestResultViewModel
    {
        public int? candidateId { get; set; }

       // public int? CategoryId { get; set; }

        //public int? ExpLevelId { get; set; }
        public string candidateName { get; set; }
        public string category { get; set; }

        public string experienceLevel { get; set; }

        
        [DataType(DataType.Date)]
        public DateTime? testDate { get; set; }

        public string testStatus { get; set; }

        public int? totalQuestion { get; set; }

        public int? attemptedQuestion { get; set; }

        public int? correctAnswer { get; set; }

        public int? wrongQuestion { get; set; }

        public int? skippedQuestion { get; set; }

        public double? percentage { get; set; }


       
        public string Duration { get; set; }
    }
}
