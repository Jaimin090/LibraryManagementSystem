using LibraryManagementSystem.Exceptions;
using LibraryManagementSystem.Models.Interfaces;
using LibraryManagementSystem.Models.Items;
using LibraryManagementSystem.Models.Users;
using Npgsql;
using NpgsqlTypes;

namespace LibraryManagementSystem.DatabaseManager
{
    public class BorrowItemsManager
    {
        /*
        Handle the borrow process of an item

        @param - user (User) - the user
        @param - item (LibraryItem) - the item

        */
        public static void HandleBorrow(User user, LibraryItem item)
        {
            try
            {
                if (item is IBorrowable && item.IsAvailable)
                {
                    if (item is Book book)
                    {
                        book.IsAvailable = false;
                        book.Borrower = user;
                        book.BorrowDate = DateTime.Now;
                        book.ReturnDate = DateTime.Now.AddDays(14);
                    }
                    else if (item is DVD dvd)
                    {
                        dvd.IsAvailable = false;
                        dvd.Borrower = user;
                        dvd.BorrowDate = DateTime.Now;
                        dvd.ReturnDate = DateTime.Now.AddDays(7);
                    }

                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        /*

        Handle the return process of an item

        @param - itemId (int) - the item id
        @param - todayDate (DateTime) - today's date

        @return - penalty fee, 0 if no penalty

        */

        public static double HandleReturn(int itemId, DateTime todayDate)
        {
            try
            {
                LibraryItem item = LibraryItemsManager.GetItem(itemId);
                if (item is Book book)
                {

                    return book.CalculateLateFees(todayDate);

                }
                else if (item is DVD dvd)
                {
                    return dvd.CalculateLateFees(todayDate);
                }

                throw new ItemDoesntExistError();
            }
            catch (Exception)
            {
                throw;
            }
        }


    }
}
