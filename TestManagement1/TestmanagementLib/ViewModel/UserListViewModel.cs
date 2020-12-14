﻿using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestmanagementLib.ViewModel
{
    public class UserListViewModel 
    {
        public string id { get; set; }
        public  string userName { get; set; }

        public string email { get; set; }

        public RoleViewModel Role { get; set; }

        //public string Role { get; set; }

    }
}
