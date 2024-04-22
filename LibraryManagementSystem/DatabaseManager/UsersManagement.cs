using LibraryManagementSystem.Exceptions;
using LibraryManagementSystem.Models.Users;
using Npgsql;

namespace LibraryManagementSystem.DatabaseManager
{
    public class UsersManagement
    {
        public static List<User> users = [];

        /*
        Get a user based on user id

              @param - id (int?) - user id

              @return - the User
              */
        public static User GetUser(int? id)
        {
            if (id.HasValue)
            {
                for (int i = 0; i < users.Count; i++)
                {
                    User user = users[i];
                    if (user.Id == id)
                    {
                        return user;
                    }
                }
                throw new UserDoesntExistError();
            }
            throw new InputNotNumberError("User ID");
        }

        /*

      Get all users

      @return - all users
      */

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

                        User? newUser = userType switch
                        {
                            1 => new Owner(id, firstName, lastName),
                            2 => new Librarian(id, firstName, lastName),
                            3 => new Patron(id, firstName, lastName),
                            _ => null
                        };

                        if (newUser != null) users.Add(newUser);

                    }
                }

                return users;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                throw new Exception(ex.Message);
            }
        }

    }
}
