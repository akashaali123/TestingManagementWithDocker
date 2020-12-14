using System.Collections.Generic;
using TestmanagementLib.Model;
using TestmanagementLib.ViewModel;

namespace TestmanagementLib.RepositoryInterface
{
    public interface ICandidate
    {
        TblCandidate GetCandidate(int id);
        IEnumerable<TblCandidate> GetAllCandidate();

        public TblCandidate Update(CandidateViewModel candidateModel,
                                   int id);

        public bool Delete(int id);

        TblCandidate Add(CandidateViewModel candidateModel);

        public object JwtForCandidate(int candidateId, 
                                      int numberOfQuestion,
                                      int time);



        public int NoOfCandidates();


        public List<CandidateNameViewModel> GetAllCandidateName();



    }
}
