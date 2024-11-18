package MyDao;

public interface UserDao {

	boolean isValidUser(String username, String password);

	boolean addUser(Userr user);

}
