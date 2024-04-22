using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using LibraryManagementSystem.Models.Items;
using LibraryManagementSystem.Models;
using LibraryManagementSystem.DatabaseManager;

namespace LibraryManagementSystem.Models.Users
{
    public abstract class Admin(int id, string firstName, string lastName) : User(id, firstName, lastName)
    {
        public void AddItem(LibraryItem item)
        {
            switch (item)
            {
                case Book book:
                    LibraryItemsManager.books.Add(book);
                    break;
                case DVD dvd:
                    LibraryItemsManager.dvds.Add(dvd);
                    break;
                case Game game:
                    LibraryItemsManager.games.Add(game);
                    break;
            }
        }

        public void AddUser(Patron patron)
        {
            UsersManagement.users.Add(patron);
        }


    }
}
