using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Logging;

namespace TestmanagementLib.Presenter
{
    public class BasePresenter<T> where T : class
    {

        protected readonly IWebHostEnvironment _env;
        
        protected  readonly ILogger<T> _logger;

      //protected ILogger<T> Logger => _logger ?? (_logger = HttpContext? .RequestServices.GetService<ILogger<T>>());
        public BasePresenter(IWebHostEnvironment env, ILogger<T> logger)
        {
             _env = env;
             _logger = logger;
        }
    }
}
