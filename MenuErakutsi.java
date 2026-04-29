import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class MenuErakutsi {
	
	private static Scanner sc = new Scanner(System.in);
	
	public static void menuErakutsi(String aukera, Connection konexioa) {
		switch (aukera) {
			case "1":
				select1(konexioa);
				menuErakutsi("default", konexioa);
				break;
			case "2":
				select2(konexioa);
				menuErakutsi("default", konexioa);
				break;
			case "3":
				select3(konexioa);
				menuErakutsi("default", konexioa);
				break;
			case "4":
				select4(konexioa);
				menuErakutsi("default", konexioa);
				break;
			case "5":
				select5(konexioa);
				menuErakutsi("default", konexioa);
				break;
			case "6":
				select6(konexioa);
				menuErakutsi("default", konexioa);
				break;
			case "Back":
				Festival.menu("default", konexioa);
				break;
			case "Exit":
                System.out.println("Aplikazioa itxi...");
                System.exit(0);
				break;
			default:
				System.out.println("Aukerak:");
                System.out.println("1: Urtearen arabera ordenatutako edizioak");
                System.out.println("2: Sarrerak prezioaren arabera ordenatuta");
                System.out.println("3: Saio kopurua eta artista bakoitzeko iraupen osoa");
                System.out.println("4: Edizio bakoitzeko sarreren batez besteko prezioa");
                System.out.println("5: Eszenatoki batean baino gehiagotan aritu diren artistak");
                System.out.println("6: Playlists con más variedad de artistas");
                System.out.println("Back: Atzera");
                System.out.println("Exit: Itxi");
                menuErakutsi(sc.nextLine(), konexioa);
				break;
		}
	}
	
	private static void select1(Connection konexioa) {
		try {
			Statement st = konexioa.createStatement();

			String query = "SELECT * FROM Edizioa ORDER BY Urtea DESC";

			ResultSet rs = st.executeQuery(query);

			while (rs.next()) {
				System.out.println(
					rs.getString("EIzena") + " | " +
					rs.getString("FIzena") + " | " +
					rs.getString("HasieraData") + " | " +
					rs.getString("AmaieraData") + " | " +
					rs.getInt("Urtea")
				);
			}

		} catch (Exception e) {
			System.out.println("Errorea edizioak erakusterakoan");
			e.printStackTrace();
		}
	}
	
	private static void select2(Connection konexioa) {
	    try {
	        Statement st = konexioa.createStatement();

	        String query =
	            "SELECT s.NId, s.Mota, s.Prezioa, s.Izena AS Eroslea, " +
	            "e.EIzena " +
	            "FROM Sarrerak s " +
	            "JOIN Edizioa e ON s.EIzena = e.EIzena " +
	            "ORDER BY s.Prezioa DESC";

	        ResultSet rs = st.executeQuery(query);

	        while (rs.next()) {
	            System.out.println(
	                "Sarrera: " + rs.getString("NId") + " | " +
	                "Edizioa: " + rs.getString("EIzena") + " | " +
	                "Mota: " + rs.getString("Mota") + " | " +
	                "Prezioa: " + rs.getDouble("Prezioa") + " | " +
	                "Eroslea: " + rs.getString("Eroslea")
	            );
	        }

	    } catch (Exception e) {
	        System.out.println("Errorea sarrerak erakusterakoan");
	        e.printStackTrace();
	    }
	}
	
	private static void select3(Connection konexioa) {
		try {
			Statement st = konexioa.createStatement();

			String query = "SELECT a.ArtId, a.Izena, COUNT(*) AS SaioKopurua, " +
					"SEC_TO_TIME(SUM(TIME_TO_SEC(s.Iraupena))) AS IraupenOsoa " +
					"FROM Abeslaria a " +
					"JOIN Saioa s ON a.ArtId = s.ArtId " +
					"GROUP BY a.ArtId, a.Izena";

			ResultSet rs = st.executeQuery(query);

			while (rs.next()) {
				System.out.println(
					rs.getInt("ArtId") + " | " +
					rs.getString("Izena") + " | " +
					"Saioak: " + rs.getInt("SaioKopurua") + " | " +
					"Iraupena guztira: " + rs.getString("IraupenOsoa")
				);
			}

		} catch (Exception e) {
			System.out.println("Errorea saio kopurua erakusterakoan");
			e.printStackTrace();
		}
	}
	
	private static void select4(Connection konexioa) {
		try {
			Statement st = konexioa.createStatement();

			String query = "SELECT e.EIzena, AVG(s.Prezioa) AS BatezBestekoPrezioa " +
					"FROM Edizioa e " +
					"JOIN Sarrerak s ON e.EIzena = s.EIzena " +
					"GROUP BY e.EIzena";

			ResultSet rs = st.executeQuery(query);

			while (rs.next()) {
				System.out.println(
					rs.getString("EIzena") + " | " +
					"BB prezioa: " + rs.getDouble("BatezBestekoPrezioa")
				);
			}

		} catch (Exception e) {
			System.out.println("Errorea batez besteko prezioa erakusterakoan");
			e.printStackTrace();
		}
	}
	
	private static void select5(Connection konexioa) {
		try {
			Statement st = konexioa.createStatement();

			String query = "SELECT a.ArtId, a.Izena, COUNT(DISTINCT s.EId) AS EszenatokiKopurua " +
					"FROM Abeslaria a " +
					"JOIN Saioa s ON a.ArtId = s.ArtId " +
					"GROUP BY a.ArtId, a.Izena " +
					"HAVING COUNT(DISTINCT s.EId) > 1";

			ResultSet rs = st.executeQuery(query);

			while (rs.next()) {
				System.out.println(
					rs.getInt("ArtId") + " | " +
					rs.getString("Izena") + " | " +
					"Eszenatoki kopurua: " + rs.getInt("EszenatokiKopurua")
				);
			}

		} catch (Exception e) {
			System.out.println("Errorea artistak erakusterakoan");
			e.printStackTrace();
		}
	}
	
	private static void select6(Connection konexioa) {
		try {
			Statement st = konexioa.createStatement();

			String query = "SELECT p.PId, p.Izena, COUNT(DISTINCT ab.ArtId) AS ArtistaKopurua " +
					"FROM Playlist p " +
					"JOIN Playlist_Abestia pa ON p.PId = pa.PId " +
					"JOIN Abestia ab ON pa.SId = ab.SId " +
					"GROUP BY p.PId, p.Izena " +
					"ORDER BY ArtistaKopurua DESC";

			ResultSet rs = st.executeQuery(query);

			while (rs.next()) {
				System.out.println(
					rs.getInt("PId") + " | " +
					rs.getString("Izena") + " | " +
					"Artista kopurua: " + rs.getInt("ArtistaKopurua")
				);
			}

		} catch (Exception e) {
			System.out.println("Errorea playlistak erakusterakoan");
			e.printStackTrace();
		}
	}
}