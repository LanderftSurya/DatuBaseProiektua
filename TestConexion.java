

import java.sql.Connection;
import java.sql.DriverManager;

public class TestConexion {
    public static void main(String[] args) {
        try {
            // 1. Cargar driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 2. Datos de conexión
            String url = "jdbc:mysql://localhost:3306/prueba";
            String usuario = "Iago";       // uno de los que creaste
            String password = "iago1234";

            // 3. Conectar
            Connection con = DriverManager.getConnection(url, usuario, password);

            System.out.println("✅ Conexion correcta");

            // 4. Cerrar conexión
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}