﻿using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using TestmanagementLib.Model;
using TestmanagementLib.RepositoryInterface;
using TestmanagementLib.ViewModel;

namespace TestmanagementLib.Presenter
{
    public class ExperienceLevelPresenter :BasePresenter<ExperienceLevelPresenter>
    {
       

        private readonly IExperienceLevel _repository;

       
        public ExperienceLevelPresenter(IWebHostEnvironment env,
                                        IExperienceLevel repository,
                                        ILogger<ExperienceLevelPresenter> logger):base(env,logger)
        {
           
            _repository = repository;
            
        }

        public IEnumerable<TblExperienceLevel> GetAll()
        {
            try
            {
                return _repository.GetAll();
            }
            catch (Exception ex)
            {
                _logger.LogError("Error in ExperienceLevel GetAll Methode in ExperienceLevelPresenter" + ex);
                return null;
            }
        }

        public TblExperienceLevel Add(ExperienceLevelViewModel experienceLevel)
        {
            try
            {
                return _repository.Add(experienceLevel);
            }
            catch (Exception ex)
            {
                _logger.LogError("Error in ExperienceLevel Add Methode in ExperienceLevelPresenter" + ex);
                return null;
               
            }
        }

        public bool Delete(int id)
        {
            try
            {
                return _repository.Delete(id);
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in ExperienceLevel Delete Methode in ExperienceLevelPresenter" + ex);
                return false;
            }
        }

        public TblExperienceLevel Update(ExperienceLevelViewModel experienceLevelModel,
                                         int id)
        {
            try
            {
                return _repository.Update(experienceLevelModel,
                                          id);
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in ExperienceLevel Update Methode in ExperienceLevelPresenter" + ex);
                return null;
            }
        }

        public TblExperienceLevel GetById(int id)                                         
        {
            try
            {
                return _repository.GetExperience(id);
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in ExperienceLevel GetById Methode in ExperienceLevelPresenter" + ex);
                return null;
            }
        }


    }
}
