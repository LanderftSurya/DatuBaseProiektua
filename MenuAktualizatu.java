import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class MenuAktualizatu {
	private static Scanner sc = new Scanner(System.in);
	
	public static void menuAktualizatu(String aukera, Connection konexioa) {
		switch (aukera) {
			case "1":
				sarreraSaldu(konexioa);
				menuAktualizatu("default", konexioa);
				break;
			case "2":
				sarreraItzuli(konexioa);
				menuAktualizatu("default", konexioa);
				break;
			case "3":
				playlistaIzenezAldatu(konexioa);
				menuAktualizatu("default", konexioa);
				break;
			case "4":
				prezioaAldatu(konexioa);
				menuAktualizatu("default", konexioa);
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
                System.out.println("1: Sarrera saldu");
                System.out.println("2: Sarrera itzuli");
                System.out.println("3: Playlista izenez aldatu");
                System.out.println("4: Sarreren prezioa aldatu");
                System.out.println("Back: Atzera");
                System.out.println("Exit: Itxi");
                menuAktualizatu(sc.nextLine(), konexioa);
				break;
		}
	}

	private static void sarreraSaldu(Connection konexioa) {
		try {
			Statement st = konexioa.createStatement();

			System.out.println("Sartu sarreraren ID-a:");
			String nId = sc.nextLine();

			if (!sarreraExistitzenDa(konexioa, nId)) {
				System.out.println("Ez dago sarrerarik ID horrekin");
				return;
			}

			if (sarreraSaldutaDago(konexioa, nId)) {
				System.out.println("Sarrera hori dagoeneko salduta dago");
				return;
			}

			System.out.println("Sartu eroslearen izena:");
			String izena = sc.nextLine();

			String query = "UPDATE Sarrerak SET Izena = '" + izena + "' WHERE NId = '" + nId + "'";
			st.executeUpdate(query);

			System.out.println("Sarrera ondo saldu da");

		} catch (Exception e) {
			System.out.println("Errorea sarrera saltzerakoan");
			e.printStackTrace();
		}
	}

	private static void sarreraItzuli(Connection konexioa) {
		try {
			Statement st = konexioa.createStatement();

			System.out.println("Sartu sarreraren ID-a:");
			String nId = sc.nextLine();

			if (!sarreraExistitzenDa(konexioa, nId)) {
				System.out.println("Ez dago sarrerarik ID horrekin");
				return;
			}

			if (!sarreraSaldutaDago(konexioa, nId)) {
				System.out.println("Sarrera hori ez dago salduta");
				return;
			}

			String query = "UPDATE Sarrerak SET Izena = NULL WHERE NId = '" + nId + "'";
			st.executeUpdate(query);

			System.out.println("Sarrera ondo itzuli da");

		} catch (Exception e) {
			System.out.println("Errorea sarrera itzultzerakoan");
			e.printStackTrace();
		}
	}

	private static void playlistaIzenezAldatu(Connection konexioa) {
		try {
			Statement st = konexioa.createStatement();

			System.out.println("Sartu playlistaren ID-a:");
			int pId = Integer.parseInt(sc.nextLine());

			if (!idExistitzenDa(konexioa, "Playlist", "PId", pId)) {
				System.out.println("Ez dago playlistik ID horrekin");
				return;
			}

			System.out.println("Sartu playlistaren izen berria:");
			String izenBerria = sc.nextLine();

			String query = "UPDATE Playlist SET Izena = '" + izenBerria + "' WHERE PId = " + pId;
			st.executeUpdate(query);

			System.out.println("Playlistaren izena ondo aldatu da");

		} catch (Exception e) {
			System.out.println("Errorea playlistaren izena aldatzerakoan");
			e.printStackTrace();
		}
	}

	private static void prezioaAldatu(Connection konexioa) {
		try {
			Statement st = konexioa.createStatement();

			System.out.println("Zein motatako sarreren prezioa aldatu nahi duzu?");
			String mota = sc.nextLine();

			if (!sarreraMotaExistitzenDa(konexioa, mota)) {
				System.out.println("Ez dago mota horretako sarrerarik");
				return;
			}

			System.out.println("Sartu prezio berria:");
			double prezioa = Double.parseDouble(sc.nextLine());

			String query = "UPDATE Sarrerak SET Prezioa = " + prezioa + " WHERE Mota = '" + mota + "'";
			st.executeUpdate(query);

			System.out.println("Sarreren prezioa ondo aldatu da");

		} catch (Exception e) {
			System.out.println("Errorea prezioa aldatzerakoan");
			e.printStackTrace();
		}
	}

	private static boolean sarreraExistitzenDa(Connection konexioa, String nId) {
		String query = "SELECT 1 FROM Sarrerak WHERE NId = '" + nId + "'";

		try (Statement st = konexioa.createStatement();
			 ResultSet rs = st.executeQuery(query)) {

			return rs.next();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	private static boolean sarreraSaldutaDago(Connection konexioa, String nId) {
		String query = "SELECT 1 FROM Sarrerak WHERE NId = '" + nId + "' AND Izena IS NOT NULL";

		try (Statement st = konexioa.createStatement();
			 ResultSet rs = st.executeQuery(query)) {

			return rs.next();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	private static boolean sarreraMotaExistitzenDa(Connection konexioa, String mota) {
		String query = "SELECT 1 FROM Sarrerak WHERE Mota = '" + mota + "'";

		try (Statement st = konexioa.createStatement();
			 ResultSet rs = st.executeQuery(query)) {

			return rs.next();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
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