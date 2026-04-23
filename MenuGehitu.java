import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class MenuGehitu {

	private static Scanner sc = new Scanner(System.in);
	
	public static void menuGehitu(String aukera, Connection konexioa) {
        switch (aukera) {
            case "1":
                insertPlaylist(konexioa);
                menuGehitu("default", konexioa);
                break;
            case "2":
                insertAbestia(konexioa);
                menuGehitu("default", konexioa);
                break;
            case "3":
                insertAbeslaria(konexioa);
                menuGehitu("default", konexioa);
                break;
            case "4":
                // insertSaioa(konexioa);
                menuGehitu("default", konexioa);
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
                System.out.println("1: Playlista sortu");
                System.out.println("2: Abestia gehitu");
                System.out.println("3: Abeslaria gehitu");
                System.out.println("4: Saioa sortu");
                System.out.println("Back: Atzera");
                System.out.println("Exit: Atzera");
                menuGehitu(sc.nextLine(), konexioa);
                break;
        }
	}
	
	private static void insertPlaylist(Connection konexioa) {
        try {
            Statement st = konexioa.createStatement();

            System.out.println("Sartu playlistaren id-a:");
            int pId = Integer.parseInt(sc.nextLine());

            System.out.println("Sartu playlistaren izena:");
            String izena = sc.nextLine();

            if (idExistitzenDa(konexioa, "Playlist", "PId", pId)) {
                System.out.println("Badago Playlist bat ID horrekin");
                return;
            }

            String query = "INSERT INTO Playlist (PId, Izena) VALUES (" + pId + ", '" + izena + "')";
            st.executeUpdate(query);

            System.out.println("Playlista ondo sortu da");

        } catch (Exception e) {
            System.out.println("Errorea playlista sortzerakoan");
            e.printStackTrace();
        }
    }
	


    private static void insertAbestia(Connection konexioa) {
        try {
            Statement st = konexioa.createStatement();

            System.out.println("Sartu abestiaren id-a:");
            int sId = Integer.parseInt(sc.nextLine());

            System.out.println("Sartu izenburua:");
            String izenburua = sc.nextLine();

            System.out.println("Sartu iraupena:");
            int iraupena = Integer.parseInt(sc.nextLine());

            System.out.println("Sartu artistaren id-a:");
            int artId = Integer.parseInt(sc.nextLine());

            if (idExistitzenDa(konexioa, "Abestia", "SId", sId)) {
                System.out.println("Badago abesti bat ID horrekin");
                return;
            }

            if (!idExistitzenDa(konexioa, "Abeslaria", "ArtId", artId)) {
                System.out.println("Ez dago abeslaririk ID horrekin");
                return;
            }

            String query = "INSERT INTO Abestia (SId, Izenburua, Iraupena, ArtId) VALUES ("
                    + sId + ", '" + izenburua + "', " + iraupena + ", " + artId + ")";
            st.executeUpdate(query);

            System.out.println("Abestia ondo sortu da");

        } catch (Exception e) {
            System.out.println("Errorea abestia sartzerakoan");
            e.printStackTrace();
        }
    }

    private static void insertAbeslaria(Connection konexioa) {
        try {
            Statement st = konexioa.createStatement();

            System.out.println("Sartu artistaren id-a:");
            int artId = Integer.parseInt(sc.nextLine());

            System.out.println("Sartu herrialdea:");
            String cIzena = sc.nextLine();

            System.out.println("Sartu artistaren izena:");
            String izena = sc.nextLine();

            System.out.println("Sartu estiloa:");
            String estiloa = sc.nextLine();

            if (idExistitzenDa(konexioa, "Abeslaria", "ArtId", artId)) {
                System.out.println("Artista hori dagoeneko existitzen da");
                return;
            }

            if (!existitzenDaString(konexioa, "Herrialde", "CIzena", cIzena)) {
                System.out.println("Herrialde hori ez da existitzen");
                return;
            }

            String query = "INSERT INTO Abeslaria (ArtId, CIzena, Izena, Estiloa) VALUES ("
                    + artId + ", '" + cIzena + "', '" + izena + "', '" + estiloa + "')";
            st.executeUpdate(query);

            System.out.println("Abeslaria ondo sortu da");

        } catch (Exception e) {
            System.out.println("Errorea abeslaria sartzerakoan");
            e.printStackTrace();
        }
    }

    private static boolean existitzenDaString(Connection konexioa, String tabla, String campo, String balioa) {
        try {
            Statement st = konexioa.createStatement();
            String query = "SELECT * FROM " + tabla + " WHERE " + campo + " = '" + balioa + "'";
            ResultSet rs = st.executeQuery(query);

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
