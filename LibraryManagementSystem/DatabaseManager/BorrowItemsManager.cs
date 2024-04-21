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
            if (item is IBorrowable && item.IsAvailable) {
                foreach (LibraryItem libItem in LibraryItemsManager.GetAllItems())
                {
                    if (item.Id == libItem.Id)
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
            }
        }

        public static void HandleReturn(int itemId)
        {
            foreach (LibraryItem libItem in LibraryItemsManager.GetAllItems())
            {
                if (itemId == libItem.Id)
                {
                    if (libItem is Book book)
                    {
                        book.IsAvailable = true;
                        book.Borrower = null;
                        book.BorrowDate = null;
                        book.ReturnDate = null;
                    }
                    else if (libItem is DVD dvd)
                    {
                        dvd.IsAvailable = true;
                        dvd.Borrower = null;
                        dvd.BorrowDate = null;
                        dvd.ReturnDate = null;
                    }
                }
            }
        }

        public static string GetBorrowedItemInfo(int id)
        {
            foreach (LibraryItem libItem in LibraryItemsManager.GetAllItems()) {

                if (libItem.Id == id) {
                    {
                        return libItem switch
                        {
                            Book book => $"{book.Borrower.FirstName} {book.Borrower.LastName} borrowed {book.Title} at {book.BorrowDate}. Due at {book.ReturnDate}",
                            DVD dvd => $"{dvd.Borrower.FirstName}   {dvd.Borrower.LastName} borrowed {dvd.Title} at {dvd.BorrowDate}. Due at {dvd.ReturnDate}",
                            _ => "error"
                        };
                    }
                }
            }

            return "error";
        }
    }
}
