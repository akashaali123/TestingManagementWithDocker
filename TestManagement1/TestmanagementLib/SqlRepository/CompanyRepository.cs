using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using TestmanagementLib.Model;
using TestmanagementLib.MyTriggerMethode;
using TestmanagementLib.RepositoryInterface;

namespace TestmanagementLib.SqlRepository
{
    public class CompanyRepository: BaseRepository<CompanyRepository>, ICompany
    {
        public CompanyRepository(TestManagementContext context,
                                 ILogger<CompanyRepository> logger,
                                 IHttpContextAccessor httpContextAccessor,
                                 TriggerClass trigger) :base(context,
                                                             logger,
                                                             httpContextAccessor,
                                                             trigger)
        {

        }
        public IEnumerable<TblCompany> GetAllCompany()
        {
            try
            {
                return _context.TblCompany;
            }
            catch (Exception ex)
            {
                _logger.LogError("Error in CompanyRepository GetAllCompany Methde in Sql Repository" + ex);
                return null;
            }
        }


    }
}
