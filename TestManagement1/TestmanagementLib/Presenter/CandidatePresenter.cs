﻿using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using TestmanagementLib.Model;
using TestmanagementLib.RepositoryInterface;
using TestmanagementLib.ViewModel;

namespace TestmanagementLib.Presenter
{
    public class CandidatePresenter : BasePresenter<CandidatePresenter>
    {

        //When we need to implement WebHostEnviroment and Logger so Inherit from base Presenter in which
        //we initialize and injected the logger and WebHostEnviroment so we get rid of duplication of code 
        //if we did'nt do this so we fix it manually in all controller as we comment it

        // private readonly IWebHostEnvironment _env;
        //private readonly ILogger<CandidatePresenter> _logger;


        private readonly ICandidate _repository;
        
        public CandidatePresenter(IWebHostEnvironment env,
                                  ICandidate repository,
                                  ILogger<CandidatePresenter> logger):base(env,logger)
        {
            //_env = env
            //_logger = logger
            _repository = repository;
            
        }
        
       
        
        public IEnumerable<TblCandidate> GetAllCandidate()
        {
            try
            {
                
                return _repository.GetAllCandidate();
            }
            catch (Exception ex)
            {
                
                _logger.LogError("Error in Candidate GetAllCandidate Methode in CandidatePresenter" +ex);
                return null;
            }           
        }
        



        public TblCandidate Add(CandidateViewModel candidate)
        {
            try
            {
                
                return _repository.Add(candidate);
            }
            catch (Exception ex)
            {
               _logger.LogError("Error in Candidate Add Methode in CandidatePresenter" + ex);
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
                _logger.LogError("Error in Candidate Delete Methode in CandidatePresenter" + ex);
                return false;
            }            
        }


        public TblCandidate Update(CandidateViewModel candidateModel,
                                   int id)
        {
            try
            {
                return _repository.Update(candidateModel,
                                          id);
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in Candidate Update Methode in CandidatePresenter" + ex);
                return null;
            }
        }



        public TblCandidate GetById(int id)
        {
            try
            {
                return _repository.GetCandidate(id);
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in Candidate GetById Methode in CandidatePresenter" + ex);
                return null;
            }
        }



        public object JwtForCandidate(int candidateId,
                                      int numberOfQuestion,
                                      int time)
        {
            try
            {
                return _repository.JwtForCandidate(candidateId,
                                                   numberOfQuestion,
                                                   time);
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in Candidate JwtForCandidate Methode in CandidatePresenter" + ex);
                return null;
            }
            
        }



        public int NoOfCandidates()
        {
            try
            {
                return _repository.NoOfCandidates();
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in Candidate NoOfCandidates Methode in CandidatePresenter" + ex);
                return 0;
            }
        }


        public List<CandidateNameViewModel> GetAllCandidateName()
        {
            try
            {
                return _repository.GetAllCandidateName();
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in Candidate GetAllCandidateName Methode in CandidatePresenter" + ex);
                return null;
            }

        }
    }
}
