﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestmanagementLib.ViewModel
{
    public class AllQuestionViewModel
    {
        public int questionId { get; set; }
        public string question { get; set; }

        public string category { get; set; }

        public int? time { get; set; }

        public string CreatedName { get; set; }

        public string experienceLevel { get; set; }

      

    }
}
