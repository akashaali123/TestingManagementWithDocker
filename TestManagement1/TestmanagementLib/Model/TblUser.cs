﻿using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace TestmanagementLib.Model
{
    public class TblUser:IdentityUser
    {
        
        public string JwtToken { get; set; }


        public string RoleId { get; set; }


        public bool IsActive { get; set; }


        public string CreatedBy { get; set; }

        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}")]
        [DataType(DataType.DateTime)]
        public DateTime CreatedDate { get; set; }

        public string CategoryId { get; set; }

       

        //For display
        [StringLength(500)]
        public string User_Name { get; set; }

    }
}
