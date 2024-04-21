using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LibraryManagementSystem.Models.Items;
using Microsoft.Maui;

namespace LibraryManagementSystem.Models.Users
{
    public class Patron(int id, string firstName, string lastName) : User(id, firstName, lastName)
    {

        public override string GetInfo()
        {
            return $"{FirstName} {LastName}, Patron";
        }

    }
}
