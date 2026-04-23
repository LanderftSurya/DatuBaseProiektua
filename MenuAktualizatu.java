import java.sql.Connection;
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

	private static void prezioaAldatu(Connection konexioa) {
		// TODO
	}

	private static void playlistaIzenezAldatu(Connection konexioa) {
		// TODO Auto-generated method stub
		
	}

	private static void sarreraItzuli(Connection konexioa) {
		// TODO Auto-generated method stub
		
	}

	private static void sarreraSaldu(Connection konexioa) {
		// TODO Auto-generated method stub
		
	}

}
