using LibraryManagementSystem.Models.Items;
using LibraryManagementSystem.Models.Users;
using Npgsql;
using NpgsqlTypes;
using System.Text;

namespace LibraryManagementSystem.DatabaseManager
{
    public class LibraryItemsManager

    {

        public static List<Game> games = [];
        public static List<DVD> dvds = [];
        public static List<Book> books = [];

        public static LibraryItem GetItem(int id)
        {
            List<LibraryItem> allItems = GetAllItems();
            for (int i = 0; i < allItems.Count; i++)
            {
                LibraryItem item = allItems[i];
                if (item.Id == id)
                {
                    return item;
                }
            }
            throw new Exceptions.ItemDoesntExistError();
        }

        public static List<LibraryItem> GetAllItems()
        {
            return new List<LibraryItem>(games.Concat<LibraryItem>(dvds).Concat(books));
        }

        public static async Task<List<DVD>> SelectAllDvDs()
        {

            List<DVD> productList = [];

            string query = "SELECT * FROM \"DvDs\"";

            using (var command = new NpgsqlCommand(query, MauiProgram.connection))
            {

                using var reader = await command.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    var id = reader.GetInt32(reader.GetOrdinal("itemid"));
                    var title = reader.GetString(reader.GetOrdinal("title"));
                    var director = reader.GetString(reader.GetOrdinal("director"));

                    productList.Add(new DVD(id, title, director));
                }
            }

            return productList;
        }

        public static async Task<List<Game>> SelectAllGames()
        {
            List<Game> productList = [];

            string query = "SELECT * FROM \"Games\"";

            using (var command = new NpgsqlCommand(query, MauiProgram.connection))
            {

                using var reader = await command.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    int id = reader.GetInt32(reader.GetOrdinal("itemid"));
                    string name = reader.GetString(reader.GetOrdinal("name"));

                    productList.Add(new Game(id, name));
                }
            }

            return productList;
        }


        public static async Task<List<Book>> SelectAllBooks()
        {
            List<Book> productList = [];

            string query = "SELECT * FROM \"Books\"";

            using (var command = new NpgsqlCommand(query, MauiProgram.connection))
            {

                using var reader = await command.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    int id = reader.GetInt32(reader.GetOrdinal("itemid"));
                    string title = reader.GetString(reader.GetOrdinal("title"));
                    string author = reader.GetString(reader.GetOrdinal("author"));

                    productList.Add(new Book(id, title, author));
                }
            }

            return productList;

        }

    }
}


