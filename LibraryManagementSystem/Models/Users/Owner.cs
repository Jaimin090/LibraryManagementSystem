using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LibraryManagementSystem.DatabaseManager;
using LibraryManagementSystem.Models.Interfaces;
using LibraryManagementSystem.Models.Items;

namespace LibraryManagementSystem.Models.Users
{
    public class Owner(int id, string firstName, string lastName) : Admin(id, firstName, lastName)
    {
        public void AddUser(Librarian librarian)
        {
            UsersManagement.users.Add(librarian);
        }
        public override string GetInfo()
        {
            return $"{FirstName} {LastName}, Owner";
        }
    }
}
