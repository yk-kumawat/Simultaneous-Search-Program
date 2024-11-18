package MyDao;

public class Query {
	static String insert = "INSERT INTO users (username, email, password) VALUES (?,?,?)";
	static String select = "SELECT * FROM users WHERE username = ? AND password = ?";
}
