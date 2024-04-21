using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LibraryManagementSystem.Models.Interfaces;
using LibraryManagementSystem.Models.Items;

namespace LibraryManagementSystem.Models.Users
{
    public abstract class User(int id, string firstName, string lastName)
    {
        public int Id { get; private set; } = id;
        public string FirstName { get; private set; } = firstName;
        public string LastName { get; private set; } = lastName;

        public abstract string GetInfo();


    }
}
