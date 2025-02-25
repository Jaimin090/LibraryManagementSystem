﻿using LibraryManagementSystem.Models.Interfaces;
using LibraryManagementSystem.Models.Users;
using System.Xml.Linq;

namespace LibraryManagementSystem.Models.Items
{
    public class DVD(int id, string title, string director) : LibraryItem(id), IBorrowable
    {
        public string Title { get; private set; } = title;

        public string Director { get; private set; } = director;
        public DateTime? BorrowDate { get; set; }
        public DateTime? ReturnDate { get; set; }
        public User? Borrower { get; set; }

        public override string GetInfo()
        {
            return $"{Title}, {Director}";
        }

        public double CalculateLateFees(DateTime todayDate)
        {
            double difference = (ReturnDate - todayDate).Value.TotalDays;

            IsAvailable = true;
            Borrower = null;
            BorrowDate = null;
            ReturnDate = null;

            if (difference < 0)
            {
                return Math.Abs(difference);
            }

            return 0;
        }
    }
}

