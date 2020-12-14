﻿using System.Collections.Generic;
using TestmanagementLib.ViewModel;

namespace TestmanagementLib.RepositoryInterface
{
    public interface IQuestionAndOption
    {
        QuestionAndOptionViewModel Add(QuestionAndOptionViewModel model);

        public List<AllQuestionViewModel> GetAll();

        bool Delete(int id);

        QuestionAndOptionViewModel Update(QuestionAndOptionViewModel questionAndOptionViewModel,
                                          int id);

        

        public QuestionOptionByIdViewModel GetQuestionById(int id);

        public List<AllQuestionViewModel> GetQuestionByCategory(int categoryId);

        public List<AllQuestionViewModel> GetQuestionByCategoryAndExperience(int categoryId,
                                                                             int experienceLevelId);

        public List<AllQuestionViewModel> GetQuestionByCategoryAndExperienceAndNo(int categoryId,
                                                                                  int experienceLevelId,
                                                                                  int number);


        public List<ShuffleQuestionViewModel> GetQuestionByCategoryAndExperienceAndNumberAndShuffling(int candidateId,
                                                                                                         int number);

        public List<AllQuestionViewModel> GetAllByRole();

        public QuestionOptionByIdViewModel GetQuestionByRoleAndId(int id);


        public int NoOfQuestion();

    }
}
