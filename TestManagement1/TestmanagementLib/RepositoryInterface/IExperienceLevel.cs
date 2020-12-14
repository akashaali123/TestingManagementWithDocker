using System.Collections.Generic;
using TestmanagementLib.Model;
using TestmanagementLib.ViewModel;

namespace TestmanagementLib.RepositoryInterface
{
    public interface IExperienceLevel
    {
        TblExperienceLevel GetExperience(int id);
        IEnumerable<TblExperienceLevel> GetAll();

        TblExperienceLevel Add(ExperienceLevelViewModel experienceLevel);

        public TblExperienceLevel Update(ExperienceLevelViewModel experienceLevelModel,
                                         int id);

        bool Delete(int id);
    }
}
