using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LibraryManagementSystem.Models.Interfaces;
using LibraryManagementSystem.Models.Items;

namespace LibraryManagementSystem.Models.Users
{
    public class Librarian(int id, string firstName, string lastName) : User(id, firstName, lastName)
    {
        public override string GetInfo()
        {
            return $"{FirstName} {LastName}, Librarian";
        }

        public override string ToString()
        {
            return $"{FirstName} {LastName}, Librarian";
        }

        
    }
}
