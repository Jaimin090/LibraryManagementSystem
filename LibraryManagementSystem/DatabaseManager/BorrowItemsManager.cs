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
            catch (Exception ex)
            {
                throw;
            }
        }

        public static double HandleReturn(int itemId, DateTime todayDate)
        {
            try
            {
                LibraryItem item = LibraryItemsManager.GetItem(itemId);
                if (item is Book book)
                {

                    double difference = (book.ReturnDate - todayDate).Value.TotalDays;

                    book.IsAvailable = true;
                    book.Borrower = null;
                    book.BorrowDate = null;
                    book.ReturnDate = null;

                    if (difference < 0)
                    {
                        return 0.5 * Math.Abs(difference);
                    }

                    return 0;

                }
                else if (item is DVD dvd)
                {
                    double difference = (dvd.ReturnDate - todayDate).Value.TotalDays;

                    dvd.IsAvailable = true;
                    dvd.Borrower = null;
                    dvd.BorrowDate = null;
                    dvd.ReturnDate = null;

                    if (difference < 0)
                    {
                        return Math.Abs(difference);
                    }

                    return 0;
                }

                throw new ItemDoesntExistError();
            }
            catch (Exception ex)
            {
                throw;
            }
        }


    }
}
