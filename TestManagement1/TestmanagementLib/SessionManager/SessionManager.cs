using Microsoft.AspNetCore.Http;


namespace TestmanagementLib.SessionManager
{
    public class SessionManager
    {
        //For Session
        public  readonly  IHttpContextAccessor _httpContextAccessor;
        public  ISession _session => _httpContextAccessor.HttpContext.Session;

        public  SessionManager(IHttpContextAccessor httpContextAccessor)
        {
            //For session
            _httpContextAccessor = httpContextAccessor;
        }
         public  void SetSession(string name,string value)
         {
            _session.SetString(name,value);
         }

        public string getSession(string name)
        {
             return _session.GetString(name);
        }

        

    }
}
