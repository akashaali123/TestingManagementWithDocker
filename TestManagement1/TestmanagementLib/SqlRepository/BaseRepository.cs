using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System.Linq;
using TestmanagementLib.Model;
using TestmanagementLib.MyTriggerMethode;
namespace TestmanagementLib.SqlRepository
{
    public class BaseRepository<T> where T : class
    {
        protected readonly TestManagementContext _context;
        protected readonly ILogger<T> _logger;

        //make for future configuration if we want trigger Like functionality in Future so we use it 
        protected readonly TriggerClass _trigger;

        //SessionManager Class Contain the Definition Of Set and get Session 

     


        protected readonly IHttpContextAccessor _httpContextAccessor;


        public BaseRepository(TestManagementContext context, 
                              ILogger<T> logger,
                              IHttpContextAccessor httpContextAccessor,
                              TriggerClass trigger)
        {
            _context = context;
            _logger = logger;
            _trigger = trigger;
            _httpContextAccessor = httpContextAccessor;
            
        }


        public string GetUserId()
        {
            string userId = _httpContextAccessor.HttpContext
                                                .User
                                                .Claims.
                                                FirstOrDefault(c => c.Type == "userid")
                                                .Value;
            return userId;
        }


        public string GetRoleId()
        {
            string userId = _httpContextAccessor.HttpContext
                                                .User
                                                .Claims
                                                .FirstOrDefault(c => c.Type == "roleid")
                                                .Value;
            return userId;
        }

    }
}
