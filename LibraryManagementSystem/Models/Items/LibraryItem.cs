using LibraryManagementSystem.Models.Interfaces;
using LibraryManagementSystem.Models.Users;
using Npgsql;

namespace LibraryManagementSystem.Models.Items
{
    public abstract class LibraryItem(int id)
    {
        public int Id { get; protected set; } = id;

        public abstract string GetInfo();
        public bool IsAvailable { get; set; } = true;
    }
}
