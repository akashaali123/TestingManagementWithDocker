using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using TestmanagementLib.Presenter;
using TestmanagementLib.RepositoryInterface;

namespace TestManagementApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CompanyController : BaseController<CompanyPresenter>
    {

        CompanyPresenter companyPresenter;
        public CompanyController(IWebHostEnvironment webHostEnvironment,
                                 ICompany repository,
                                 ILogger<CompanyPresenter> logger) : base(webHostEnvironment, logger)
        {
            companyPresenter = new CompanyPresenter(webHostEnvironment, repository, logger);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("/company/getall")]
        public IActionResult GetAllCompany()
        {
            var company = companyPresenter.GetAllCompany();
            return helperMethode(company, "companies");
        }

    }
}