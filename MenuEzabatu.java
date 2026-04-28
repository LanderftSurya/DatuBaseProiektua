import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class MenuEzabatu {
	
	private static Scanner sc = new Scanner(System.in);
	
	public static void menuEzabatu(String aukera, Connection konexioa) {
		switch (aukera) {
            case "1":
            	deletePlaylist(konexioa);
            	menuEzabatu("default", konexioa);
                break;
            case "2":
            	deleteSaioa(konexioa);
            	menuEzabatu("default", konexioa);
                break;
            case "3":
            	deleteAbestia(konexioa);
            	menuEzabatu("default", konexioa);
                break;
            case "4":
            	deleteArtista(konexioa);
            	menuEzabatu("default", konexioa);
                break;
            case "Back":
				Festival.menua("default", konexioa);
				break;
            case "Exit":
                System.out.println("Aplikazioa itxi...");
                System.exit(0);
                break;
            default:
                System.out.println("Aukerak:");
                System.out.println("1: Playlista Ezabatu");
                System.out.println("2: Saioa Ezabatu");
                System.out.println("3: Abestia Ezabatu");
                System.out.println("4: Artista Ezabatu");
                System.out.println("Back: Atzera");
                System.out.println("Exit: Itxi");
                menuEzabatu(sc.nextLine(), konexioa);
                break;
        }
	}
	
	private static void deletePlaylist(Connection konexioa) {
		try {
			Statement st = konexioa.createStatement();

			System.out.println("Sartu ezabatu nahi duzun playlistaren ID-a:");
			int pId = Integer.parseInt(sc.nextLine());

			if (!idExistitzenDa(konexioa, "Playlist", "PId", pId)) {
				System.out.println("Ez dago playlistik ID horrekin");
				return;
			}

			String query = "DELETE FROM Playlist WHERE PId = " + pId;
			st.executeUpdate(query);

			System.out.println("Playlista ondo ezabatu da");

		} catch (Exception e) {
			System.out.println("Errorea playlista ezabatzerakoan");
			e.printStackTrace();
		}
	}
	
	private static void deleteSaioa(Connection konexioa) {
	    try {
	        Statement st = konexioa.createStatement();

	        System.out.println("Sartu artistaren ID-a:");
	        int artId = Integer.parseInt(sc.nextLine());

	        System.out.println("Sartu antzezlekuaren ID-a:");
	        int eId = Integer.parseInt(sc.nextLine());

	        System.out.println("Sartu playlistaren ID-a:");
	        int pId = Integer.parseInt(sc.nextLine());

	        String check = "SELECT 1 FROM Saioa WHERE ArtId = " + artId
	                + " AND EId = " + eId
	                + " AND PId = " + pId;

	        ResultSet rs = st.executeQuery(check);

	        if (!rs.next()) {
	            System.out.println("Ez dago saiorik datu horiekin");
	            return;
	        }

	        String query = "DELETE FROM Saioa WHERE ArtId = " + artId
	                + " AND EId = " + eId
	                + " AND PId = " + pId;

	        st.executeUpdate(query);

	        System.out.println("Saioa ondo ezabatu da");

	    } catch (Exception e) {
	        System.out.println("Errorea saioa ezabatzerakoan");
	        e.printStackTrace();
	    }
	}
	
	private static void deleteAbestia(Connection konexioa) {
		try {
			Statement st = konexioa.createStatement();

			System.out.println("Sartu ezabatu nahi duzun abestiaren ID-a:");
			int sId = Integer.parseInt(sc.nextLine());

			if (!idExistitzenDa(konexioa, "Abestia", "SId", sId)) {
				System.out.println("Ez dago abestirik ID horrekin");
				return;
			}

			String query = "DELETE FROM Abestia WHERE SId = " + sId;
			st.executeUpdate(query);

			System.out.println("Abestia ondo ezabatu da");

		} catch (Exception e) {
			System.out.println("Errorea abestia ezabatzerakoan");
			e.printStackTrace();
		}
	}
	
	private static void deleteArtista(Connection konexioa) {
		try {
			Statement st = konexioa.createStatement();

			System.out.println("Sartu ezabatu nahi duzun artistaren ID-a:");
			int artId = Integer.parseInt(sc.nextLine());

			if (!idExistitzenDa(konexioa, "Abeslaria", "ArtId", artId)) {
				System.out.println("Ez dago artistarik ID horrekin");
				return;
			}

			String query = "DELETE FROM Abeslaria WHERE ArtId = " + artId;
			st.executeUpdate(query);

			System.out.println("Artista ondo ezabatu da");

		} catch (Exception e) {
			System.out.println("Errorea artista ezabatzerakoan");
			e.printStackTrace();
		}
	}

	private static boolean idExistitzenDa(Connection konexioa, String taula, String campo, int id) {
		String query = "SELECT 1 FROM " + taula + " WHERE " + campo + " = " + id;

		try (Statement st = konexioa.createStatement();
			 ResultSet rs = st.executeQuery(query)) {

			return rs.next();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
