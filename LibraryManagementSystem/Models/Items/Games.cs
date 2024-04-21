using LibraryManagementSystem.Models.Interfaces;
using LibraryManagementSystem.Models.Users;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryManagementSystem.Models.Items
{
    public class Game(int id, string name) : LibraryItem(id)
    {
        public string Name { get; set; } = name;
        public override string GetInfo()
        {
            return $"{Name}";
        }
    }
}
