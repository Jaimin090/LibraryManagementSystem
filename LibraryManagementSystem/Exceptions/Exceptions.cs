namespace LibraryManagementSystem.Exceptions
{
    public class ItemDoesntExistError : Exception
    {
        private const string message = "Item doesn't exist";
        public ItemDoesntExistError() : base(message)
        {
        }
    }

    public class UserDoesntExistError : Exception
    {
        private const string message = "User doesn't exist";
        public UserDoesntExistError() : base(message)
        {

        }
    }
}
