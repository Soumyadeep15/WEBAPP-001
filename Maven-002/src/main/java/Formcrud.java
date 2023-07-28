import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Formcrud {
	public static boolean insertForm(String name , int age , String role , long sal) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/modform?user=root&password=root");
			PreparedStatement ps = con.prepareStatement("INSERT INTO modform VALUES(? , ? , ? ,?)");
			ps.setString(1, name);
			ps.setInt(2, age);
			ps.setString(3, role);
			ps.setLong(4, sal);
			ps.execute();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
