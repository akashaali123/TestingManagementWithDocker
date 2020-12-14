using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using TestmanagementLib.Model;
using TestmanagementLib.RepositoryInterface;
using TestmanagementLib.ViewModel;

namespace TestmanagementLib.Presenter
{                                               //generic class For logger
    public class CategoryPresenter:BasePresenter<CategoryPresenter>
    {
     
        private readonly ICategory _repository;
       
        public CategoryPresenter(IWebHostEnvironment env,
                                 ICategory repository,
                                 ILogger<CategoryPresenter> logger):base(env,logger)
        {
            
            _repository = repository;
            
        }

        public IEnumerable<TblCategory> GetAllCategory()
        {
            try
            {
                return _repository.GetAllCategory();
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in Category GetAllCategory Methode in CategoryPresenter" +ex);
                 return null;
            }
        }

        public TblCategory Add(CategoryViewModel category)
        {
            try
            {
                return (_repository.Add(category));
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in Category Add Methode in CategoryPresenter" + ex);
                return null;
            }
        }


        public bool Delete(int id)
        {
            try
            {
                return (_repository.Delete(id));
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in Category Delete Methode in CategoryPresenter" + ex);
                return false;
            }
        }

        public TblCategory Update(CategoryViewModel categoryModel,
                                  int id)
        {
            try
            {
                return (_repository.Update(categoryModel,
                                           id));
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in Category Update Methode in CategoryPresenter" + ex);
                return null;
            }
        }


        public TblCategory GetById(int id)
        {
            try
            {
                return (_repository.GetCategory(id));
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in Category GetById Methode in CategoryPresenter" + ex);
                return null;
            }
        }

    }
}
