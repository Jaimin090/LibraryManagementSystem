namespace LibraryManagementSystem.Exceptions
{
    public class ItemDoesntExistError() : Exception("Item doesn't exist")
    {
    }

    public class UserDoesntExistError() : Exception("User doesn't exist")
    {
    }

    public class InputNotNumberError(string fieldName) : Exception($"{fieldName} must be number")
    {
    }
}
