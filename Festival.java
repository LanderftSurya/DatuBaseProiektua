import java.sql.Connection;

public class Festival{
	public static void main() {
		System.out.println("Aplikazioa martxan dago");
		try {
			Connection con = konektatu(0);
		} catch (Exception e) {
			System.out.println("Konexioa ez da ondo ezarri");
			e.printStackTrace();
			System.exit(0);
		}
		menua(null);
		
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
	
	private static void menua(String aukera) {
		switch (aukera) {
			case "1":
				menuGehitu(null);
				break;
			case "2":
				menuAktualizatu(null);
			case "3":
				menuEzabatu(null);
				break;
			case "4":
				menuErakutsi(null);
				break;
			case "Exit":
				System.out.println("Aplikazioa itxi...");
				System.exit(0);
				break;
			default:
				System.out.println("Aukerak:   ");	
				System.out.println("1: Gehitu datuak");
				System.out.println("2: Aktualizatu datuak");
				System.out.println("3: Datuak ezabatu");
				System.out.println("4: Datuak erakutsi");
				System.out.println("Exit: Irten");
				menua(System.console().readLine());
				break;
		}	
	}
	
	
	private static void menuGehitu(String aukera) {
		switch (aukera) {
		case "1":
			//crear una playlist mandado un nombre y un autor
			// id al azar
			// mirar si hay hueco
			break;
		case "2":
			//crear una cancion mandado un nombre y autor
		case "3":
			//sortu abeslari bat, izena estilo ta herrialde
			//begiratu herrialdea eta sortu
			break;
		case "4":
			//saioa sortu ta ipini playlist bat 
			//antzezlekuak begiratu
			break;
		case "Exit":
			System.out.println("Aplikazioa itxi...");
			System.exit(0);
			break;
		default:
			System.out.println("Aukerak:   ");	
			System.out.println("1: Playlista sortu");
			System.out.println("2: Abestia gehitu");
			System.out.println("3: Abeslaria gehitu");
			System.out.println("4: Datuak erakutsi");
			System.out.println("Exit: Irten");
			menua(System.console().readLine());
			break;
	}
	}
	
	private static void menuAktualizatu(String aukera) {
		System.out.println("Aukerak:    ");
		menua(null);
	}
	
	private static void menuEzabatu(String aukera) {
		System.out.println("Aukerak:    ");
		menua(null);
	}
	
	private static void menuErakutsi(String aukera) {
		System.out.println("Aukerak:    ");
		menua(null);
	}
}
