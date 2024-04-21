using LibraryManagementSystem.Models.Items;
using LibraryManagementSystem.Models.Users;
using Npgsql;

namespace LibraryManagementSystem.DatabaseManager
{
    public class UsersManagement
    {
        public static List<User> users = [];

        public static User? GetUser(int id)
        {
            for (int i = 0; i < users.Count; i++)
            {
                User user = users[i];
                if (user.Id == id)
                {
                    return user;
                }
            }
            return null;
        }

        public static async Task<List<User>> SelectAllUsers()
        {
            try
            {
                List<User> users = [];

                string query = "SELECT * FROM \"Users\"";

                using (var command = new NpgsqlCommand(query, MauiProgram.connection))
                {

                    using var reader = await command.ExecuteReaderAsync();
                    while (await reader.ReadAsync())
                    {

                        var id = reader.GetInt32(reader.GetOrdinal("id"));

                        var userType = reader.GetInt32(reader.GetOrdinal("usertype"));
                        var firstName = reader.GetString(reader.GetOrdinal("firstname"));
                        var lastName = reader.GetString(reader.GetOrdinal("lastname"));

                        if (userType == 1)
                        {
                            users.Add(new Owner(id, firstName, lastName));
                        }
                        else if (userType == 2)
                        {
                            users.Add(new Librarian(id, firstName, lastName));
                        }
                        else if (userType == 3)
                        {
                            users.Add(new Patron(id, firstName, lastName));
                        }

                        // User? newUser = userType switch
                        // {
                        //     1 => new Owner(id, firstName, lastName),
                        //     2 => new Librarian(id, firstName, lastName),
                        //     3 => new Patron(id, firstName, lastName),
                        //     _ => null
                        // };

                        // if (newUser != null) users.Add(newUser);

                    }
                }

                return users;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                throw new Exception("" + ex.Message);
            }
        }

    }
}
