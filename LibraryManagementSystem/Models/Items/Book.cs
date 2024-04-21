using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using LibraryManagementSystem.Models.Interfaces;
using LibraryManagementSystem.Models.Users;

namespace LibraryManagementSystem.Models.Items
{
    public class Book(int id, string title, string author) : LibraryItem(id), IBorrowable

    {
        public string Title { get; private set; } = title;
        public string Author { get; private set; } = author;
        public DateTime? BorrowDate { get; set; }
        public DateTime? ReturnDate { get; set; }
        public User? Borrower { get; set; }

        public double CalculateLateFees(int daysLate)
        {
            throw new NotImplementedException();
        }
        public override string GetInfo()
        {
            return $"{Title}, {Author}";
        }
    }


}
