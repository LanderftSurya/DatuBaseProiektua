import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Festival {

    public static void main(String[] args) {
        System.out.println("Aplikazioa martxan dago");
        Connection konexioa = null;

        try {
            konexioa = konektatu(0);
        } catch (Exception e) {
            System.out.println("Konexioa ez da ondo ezarri");
            e.printStackTrace();
            System.exit(0);
        }

        menua(null, konexioa);
    }

    private static Connection konektatu(int saiakera) {
        if (saiakera >= 3) {
            System.out.println("Saiakera gehiegi");
            return null;
        }

        TestConexion konexioa = new TestConexion();
        System.out.println("Konexioa ezarrtzeko idatzi zure erabiltzaile izena eta pasahitza");
        System.out.println("Erabiltzaile izena:");
        String pUsuario = System.console().readLine();
        System.out.println("Pasahitza:");
        String pPassword = System.console().readLine();

        try {
            return konexioa.konexioaEzarri(pUsuario, pPassword);
        } catch (Exception e) {
            saiakera++;
            System.out.println("Konexioa ez da ondo ezarri");
            System.out.println("Erabiltzaile izena eta pasahitza egiaztatu");
            return konektatu(saiakera);
        }
    }

    private static void menua(String aukera, Connection konexioa) {
        switch (aukera) {
            case "1":
                menuGehitu(null, konexioa);
                break;
            case "2":
                menuAktualizatu(null, konexioa);
                break;
            case "3":
                menuEzabatu(null, konexioa);
                break;
            case "4":
                menuErakutsi(null, konexioa);
                break;
            case "Exit":
                System.out.println("Aplikazioa itxi...");
                System.exit(0);
                break;
            default:
                System.out.println("Aukerak:");
                System.out.println("1: Gehitu datuak");
                System.out.println("2: Aktualizatu datuak");
                System.out.println("3: Datuak ezabatu");
                System.out.println("4: Datuak erakutsi");
                System.out.println("Exit: Irten");
                menua(System.console().readLine(), konexioa);
                break;
        }
    }

    private static void menuGehitu(String aukera, Connection konexioa) {
        switch (aukera) {
            case "1":
                insertPlaylist(konexioa);
                break;
            case "2":
                // insertAbestia(konexioa);
            	insertAbestia(konexioa);
                break;
            case "3":
                insertAbeslaria(konexioa);
                break;
            case "4":
                // insertSaioa(konexioa);
            	
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
                System.out.println("Exit: Irten");
                menuGehitu(System.console().readLine(), konexioa);
                break;
        }
    }

    private static void menuAktualizatu(String aukera, Connection konexioa) {
        System.out.println("Aukerak:");
        menua(null, konexioa);
    }

    private static void menuEzabatu(String aukera, Connection konexioa) {
        System.out.println("Aukerak:");
        menua(null, konexioa);
    }

    private static void menuErakutsi(String aukera, Connection konexioa) {
        System.out.println("Aukerak:");
        menua(null, konexioa);
    }

    private static void insertPlaylist(Connection konexioa) {
        try {
            Statement st = konexioa.createStatement();

            System.out.println("Sartu playlistaren id-a:");
            int pId = Integer.parseInt(System.console().readLine());

            System.out.println("Sartu playlistaren izena:");
            String izena = System.console().readLine();

            if (idExistitzenDa(konexioa, "Playlist", "PId", pId)) {
                System.out.println("Badago Playlist bat Id horrekin");
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
            int sId = Integer.parseInt(System.console().readLine());

            System.out.println("Sartu izenburua:");
            String izenburua = System.console().readLine();

            System.out.println("Sartu iraupena:");
            int iraupena = Integer.parseInt(System.console().readLine());

            System.out.println("Sartu artistaren id-a:");
            int artId = Integer.parseInt(System.console().readLine());

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
            int artId = Integer.parseInt(System.console().readLine());

            System.out.println("Sartu herrialdea:");
            String cIzena = System.console().readLine();

            System.out.println("Sartu artistaren izena:");
            String izena = System.console().readLine();

            System.out.println("Sartu estiloa:");
            String estiloa = System.console().readLine();

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