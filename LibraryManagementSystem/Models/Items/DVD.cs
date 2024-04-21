using LibraryManagementSystem.Models.Interfaces;
using LibraryManagementSystem.Models.Users;
using System.Xml.Linq;

namespace LibraryManagementSystem.Models.Items
{
    public class DVD(int id, string title, string director) : LibraryItem(id), IBorrowable
    {
        public string Title { get; private set; } = title;

        public string Director { get; private set; } = director;
        public DateTime? BorrowDate { get; set; }
        public DateTime? ReturnDate { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public User? Borrower { get; set; }

        public override string GetInfo()
        {
            return $"{Title}, {Director}";
        }

        public double CalculateLateFees(int daysLate)
        {
            throw new NotImplementedException();
        }
    }
}

