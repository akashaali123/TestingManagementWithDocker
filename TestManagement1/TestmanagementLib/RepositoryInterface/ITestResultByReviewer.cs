using System;
using System.Collections.Generic;
using TestmanagementLib.ViewModel;

namespace TestmanagementLib.RepositoryInterface
{
    public interface ITestResultByReviewer
    {
        public List<TestResultViewModel> DisplayResultAllCandidate();


        public TestResultViewModel DisplayResultcandidateById(int candidateId);


        public List<TestQuestionOptionViewModel> DisplayCandidateQuestion(int candidateId);

        public List<TestResultViewModel> DisplayResultbyDate(DateTime fromDate,
                                                             DateTime toDate);

        public List<TestResultViewModel> DisplayResultbyPercentage();

        public List<TestResultViewModel> DisplayResultbyTop10Percentage();

        public List<TestResultViewModel> DisplayResultbyTop10TestStatus(string status);


    }
}
