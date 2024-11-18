package MyDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import MyUtil.DBUtil;

public class UserDaoImp implements UserDao {

	@Override
	public boolean isValidUser(String username, String password) {
		String query = Query.select;
		try(Connection connection = DBUtil.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(query)) {
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);
			ResultSet resultSet = preparedStatement.executeQuery();
			return resultSet.next();
		} catch (SQLException e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addUser(Userr user) {
		String query = Query.insert;
		try(Connection connection = DBUtil.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(query)) {
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setString(3, user.getPassword());
			int rows = preparedStatement.executeUpdate();
			return rows>0;
		} catch (SQLException e){
			e.printStackTrace();
			return false;
		}
	}

}
