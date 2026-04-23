import java.sql.Connection;
import java.util.Scanner;

public class Festival {

    private static Scanner sc = new Scanner(System.in);

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

        if (konexioa == null) {
            System.out.println("Ezin izan da konexioa ezarri");
            System.exit(0);
        }

        menua("default", konexioa);
    }

    private static Connection konektatu(int saiakera) {
        if (saiakera >= 3) {
            System.out.println("Saiakera gehiegi");
            return null;
        }

        TestConexion konexioa = new TestConexion();

        System.out.println("Konexioa ezarrtzeko idatzi zure erabiltzaile izena eta pasahitza");
        System.out.println("Erabiltzaile izena:");
        String pUsuario = sc.nextLine();

        System.out.println("Pasahitza:");
        String pPassword = sc.nextLine();

        try {
            return konexioa.konexioaEzarri(pUsuario, pPassword);
        } catch (Exception e) {
            saiakera++;
            System.out.println("Konexioa ez da ondo ezarri");
            System.out.println("Erabiltzaile izena eta pasahitza egiaztatu");
            return konektatu(saiakera);
        }
    }

    public static void menua(String aukera, Connection konexioa) {
        switch (aukera) {
            case "1":
                MenuGehitu.menuGehitu("default", konexioa);
                break;
            case "2":
            	MenuAktualizatu.menuAktualizatu("default", konexioa);
                break;
            case "3":
                menuEzabatu("default", konexioa);
                break;
            case "4":
                menuErakutsi("default", konexioa);
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
                menua(sc.nextLine(), konexioa);
                break;
        }
    }

    private static void menuEzabatu(String aukera, Connection konexioa) {
        menua("default", konexioa);
    }

    private static void menuErakutsi(String aukera, Connection konexioa) {
        menua("default", konexioa);
    }
}