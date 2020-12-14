using System.Collections.Generic;
using TestmanagementLib.Model;
using TestmanagementLib.ViewModel;

namespace TestmanagementLib.RepositoryInterface
{
    public interface ICategory
    {
        TblCategory GetCategory(int id);

        IEnumerable<TblCategory> GetAllCategory();

        TblCategory Add(CategoryViewModel category);

        public TblCategory Update(CategoryViewModel categoryModel,
                                  int id);

        public bool Delete(int id);
    }
}
