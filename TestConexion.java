

import java.sql.Statement;
import java.util.Scanner;
import java.io.File;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestConexion {
    public Connection konexioaEzarri(String pUsuario, String pPassword) {
    	Connection con =null;
    	try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            boolean badago;
            String url = "jdbc:mysql://localhost:3306/";
            String usuario = pUsuario;
            String password = pPassword;
            String datuBasea = "Festibalak";
            con = DriverManager.getConnection(url, usuario, password);
            con.createStatement().executeUpdate("CREATE DATABASE IF NOT EXISTS " + datuBasea);
            con.createStatement().execute("USE " + datuBasea);
            File scriptFile = new File("festibalak.sql");
            
            try (Scanner s = new Scanner(scriptFile);
                Statement stmt = con.createStatement()) { 
                s.useDelimiter(";");    
                while (s.hasNext()) {
                    String comando = s.next().trim();
                    if (!comando.isEmpty()) {
                        stmt.execute(comando);
                    }
                }
            } catch (FileNotFoundException e) {
                System.err.println("Error: Ez dago datu basea deskargatuta.");
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
    
}