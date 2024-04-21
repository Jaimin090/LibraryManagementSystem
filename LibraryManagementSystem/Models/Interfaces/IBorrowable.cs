using LibraryManagementSystem.Models.Items;
using LibraryManagementSystem.Models.Users;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryManagementSystem.Models.Interfaces
{
    interface IBorrowable
    {
        DateTime? BorrowDate { get; set; }
        DateTime? ReturnDate { get; set; }
        User? Borrower { get; set; }
        double CalculateLateFees(int daysLate);
    }
}
