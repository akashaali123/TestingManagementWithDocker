﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestmanagementLib.Model
{
    public class ApplicationSettings
    {
        //Use for to Access appSettingJson Configuration and inject this class in startup.cs

        public string JWT_Secret { get; set; }
        //name of key in app setting if we define url for Cors we do the same and add another Property

        public string ResetPassword_URL { get; set; }
        //URL of front end Port
       
        public string ConfirmEmail_URL { get; set; }

        //for example Client_Url
    }
}
