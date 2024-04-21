using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using LibraryManagementSystem.Models.Items;
using LibraryManagementSystem.Models;

namespace LibraryManagementSystem.Models.Users
{
    public abstract class Admin(int id, string firstName, string lastName) : User(id, firstName, lastName)
    {
        public void AddItem(Book book)
        {
              //MauiProgram.LibraryItemsManager.Add(book);
        }

        public void AddUser(Patron patron)
        {
        }


    }
}
