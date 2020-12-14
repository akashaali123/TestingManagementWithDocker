using System.Collections.Generic;
using TestmanagementLib.Model;

namespace TestmanagementLib.RepositoryInterface
{
    public interface ICompany
    {

        public IEnumerable<TblCompany> GetAllCompany();
    }
}
