

import java.sql.Connection;
import java.sql.DriverManager;

public class TestConexion {
    public Connection konexioaEzarri(String pUsuario, String pPassword) {
    	Connection con =null;
    	try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            String url = "jdbc:mysql://localhost:3306/Festibalak";
            String usuario = pUsuario;
            String password = pPassword;

            con = DriverManager.getConnection(url, usuario, password);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}