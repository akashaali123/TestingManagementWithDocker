using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using TestmanagementLib.Model;

namespace TestmanagementLib.ViewModel
{

    
    public class QuestionAndOptionViewModel
    {




        [JsonProperty(PropertyName = "question")]
        public TblQuestion question { get; set; }



        [JsonProperty(PropertyName = "option")]
        public IList<TblOption> option { get; set; }

       

    }

 

    }

