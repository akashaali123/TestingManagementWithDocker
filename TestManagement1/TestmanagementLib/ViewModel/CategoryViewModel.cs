using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace TestmanagementLib.ViewModel
{
    public class CategoryViewModel
    {
     


        [Required]
        [StringLength(250)]
        public string Name { get; set; }

    }
}
