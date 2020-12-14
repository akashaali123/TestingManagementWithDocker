﻿using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using TestmanagementLib.Model;
using TestmanagementLib.RepositoryInterface;
using TestmanagementLib.ViewModel;
using TestmanagementLib.MyTriggerMethode;

namespace TestmanagementLib.SqlRepository
{
    //Inherit with generic class and candidate Repository                
    public class CandidateRepository :BaseRepository<CandidateRepository> ,ICandidate
    {


        //Make BaseRepository in which we initialize our logger as a generic and context class
        //So we avoid duplication
        //TestManagementContext _context;
        //ILogger<SqlCandidateRepository> _logger; 
        //Required For Get Session implementation in baseClass

       
        
        
        private readonly ApplicationSettings _appSettings;//For Jwt
                                                                                                        //For jwt
        public CandidateRepository(TestManagementContext context,
                                   ILogger<CandidateRepository> logger,
                                   IOptions<ApplicationSettings> appSettings,
                                   IHttpContextAccessor httpContextAccessor,
                                   TriggerClass trigger) : base(context,
                                                                logger,
                                                                httpContextAccessor,
                                                                trigger)
        {
            //_logger = logger;
            //_context = context;

            _appSettings = appSettings.Value;//For jwt

        }



      
        
        
        
        
        public TblCandidate Add(CandidateViewModel candidateModel)
        {
            try
            {

                TblCandidate candidate = new TblCandidate
                {
                    CandidateId=candidateModel.CandidateId,
                    FirstName = candidateModel.FirstName,
                    LastName=candidateModel.LastName,
                    Email=candidateModel.Email,
                    CurrentCompany=candidateModel.CurrentCompany,
                    TechStack=candidateModel.TechStack,
                    CategoryId=candidateModel.categoryId,
                    ExperienceLevelId = candidateModel.ExperienceLevelId,
                    CreatedDate = DateTime.Today,
                    IsActive = true,
                    CreatedBy = GetUserId(),
                };
                _context.TblCandidate.Add(candidate);
                _context.SaveChanges();
                return candidate;
            }
            catch(Exception ex)
            {
                _logger.LogError("Error in Candidate Add Methode in Sql Repository" + ex);
                 //throw ex;
                 return null;
            }
            
        }

        
        
        
        
        public bool Delete(int id)
        {
            try
            {
                var candidate = _context.TblCandidate.Find(id);
                if (candidate != null)
                {

                    _context.TblCandidate.Remove(candidate);
                    _context.SaveChanges();

                }

                return true;
            }
            catch (Exception ex)
            {
                _logger.LogError("Error in Candidate Delete Methode in Sql Repository" + ex);
                return false;
            }


        }

       
        
        
        
        public IEnumerable<TblCandidate> GetAllCandidate()
        {
            try
            {

                return _context.TblCandidate.Where(e => e.IsActive == true)
                    .OrderByDescending(x => x.CreatedDate)
                    .ThenByDescending(x=>x.CandidateId)
                    .ThenByDescending(e => e.UpdatedDate);
                    
                 
                    
                
            }
            catch (Exception ex)
            {
                _logger.LogError("Error in Candidate GetAllCandidate Methode in Sql Repository" + ex);
                return null;
            }

        }


        public List<CandidateNameViewModel> GetAllCandidateName()
        {
            try
            {
              var nameFormat = _context.TblCandidate.Select(x => new CandidateNameViewModel
              {
                    Id = x.CandidateId,
                    NameFormat = string.Format(
                                               "{0} {1} ({2})",
                                               x.FirstName,
                                               x.LastName,
                                               _context.TblCategory.Where(e=>e.CategoryId == x.CategoryId)
                                                                   .Select(e=>e.Name)
                                                                   .SingleOrDefault()
                                              )

              })
              .ToList();

                return nameFormat;
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in Candidate GetAllCandidateName Methode in Sql Repository" + ex);
                return null;
            }
        }

       
        
        
        
        
        
        public TblCandidate GetCandidate(int id)
        {
            try
            {
                return _context.TblCandidate.Find(id);
            }
            catch (Exception ex)
            {
                _logger.LogError("Error in Candidate GetCandidate Methode in Sql Repository" + ex);
                return null;
            }

        }

        
        
        
        
        
        public TblCandidate Update(CandidateViewModel candidateModel,
                                   int id)
        {
            try
            {
                var candidateChanges = _context.TblCandidate.Where(e => e.CandidateId == id)
                                                            .SingleOrDefault();


                candidateChanges.FirstName = candidateModel.FirstName;
                candidateChanges.LastName = candidateModel.LastName;
                candidateChanges.Email = candidateModel.Email;
                candidateChanges.CurrentCompany = candidateModel.CurrentCompany;
                candidateChanges.CategoryId = candidateModel.categoryId;
                candidateChanges.ExperienceLevelId = candidateModel.ExperienceLevelId;
                candidateChanges.UpdatedBy = GetUserId();
                candidateChanges.UpdatedDate = DateTime.Today;


                var candidate = _context.TblCandidate.Attach(candidateChanges);
                candidate.State = EntityState.Modified;
                _context.SaveChanges();
                return candidateChanges;
            }
            catch (Exception ex)
            { 
               _logger.LogError("Error in Candidate Update Methode in Sql Repository" + ex);
                return null;
            }
           

        }



        

        public  object JwtForCandidate(int candidateId,
                                       int numberOfQuestion,
                                       int time)
        {
            try
            {
                var candidate = _context.TblCandidate.Find(candidateId);
                if (candidate != null)
                {
                    var tokenDescriptor = new SecurityTokenDescriptor
                    {
                        Subject = new ClaimsIdentity(new Claim[]
                           {
                                new Claim("role", "candidate"),//We access this userID in UserProfile Controller
                                 new Claim("candidateid", candidate.CandidateId.ToString()),
                                 new Claim("number",numberOfQuestion.ToString()),//sending no of question in jwt which is used to get test question
                                 new Claim("time",time.ToString())

                           }),

                        Expires = DateTime.UtcNow.AddHours(5),

                        SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_appSettings.JWT_Secret)), SecurityAlgorithms.HmacSha256Signature)
                    };
                    var tokenHandler = new JwtSecurityTokenHandler();

                    var securityToken = tokenHandler.CreateToken(tokenDescriptor);

                    var token = tokenHandler.WriteToken(securityToken);
                    return token;

                }
                else
                {
                    return new { message = "Invalid Candidate" +candidateId };
                }
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in Candidate JwtForCandidate Methode in Sql Repository" + ex);
                return null;
            }
            

        
        }



        public int NoOfCandidates()
        {
            try
            {
                int noOfCandidate = _context.TblCandidate.Count();
                return noOfCandidate;
            }
            catch (Exception ex)
            {

                _logger.LogError("Error in Candidate NoOfCandidates Methode in Sql Repository" + ex);
                return 0; ;
            }
        }



    }

    
}
