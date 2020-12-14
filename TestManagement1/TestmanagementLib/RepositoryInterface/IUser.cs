using System.Collections.Generic;
using System.Threading.Tasks;
using TestmanagementLib.ViewModel;

namespace TestmanagementLib.RepositoryInterface
{
    public interface IUser
    {
        public Task<object> PostApplicationUser(ApplicationUserModel model);

        public Task<object> Login(LoginModel model);


        public Task<bool> Logout();


        public Task<object> CreateRole(RoleModel model);

        public Task<object> EditUserInRole(UserRoleViewModel model,
                                           string roleId);

        public List<UserListViewModel> UserList();

        public  Task<object> DeleteUser(string id);

        public  Task<object> GetUserById(string id);

        public  Task<object> UpdateUser(UserViewModelById model,
                                        string id);

        public  Task<object> ChangePassword(ChangePasswordViewModel model,
                                            string id);
        public List<RoleViewModel> ListRole();

        public  Task<object> ForgotPassword(ForgotPasswordViewModel model);

        public  Task<object> ResetPassword(ResestPasswordViewModel model);

        public  Task<object> ConfirmEmail(string email,
                                          string token);


        public int NoOfUser();

        public List<string> GetEmail();



        public Task<object> ForgotPasswordForAdmin(string email);


        public  Task<object> ForgotPasswordForNewUser(string email);

    }
}
