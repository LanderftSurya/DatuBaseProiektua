import java.sql.Connection;
import java.util.Scanner;

public class MenuErakutsi {
	
	private static Scanner sc = new Scanner(System.in);
	
	public static void menuErakutsi(String aukera, Connection konexioa) {
		switch (aukera) {
			case "1":
				menuErakutsi("default", konexioa);
				break;
			case "2":
				menuErakutsi("default", konexioa);
				break;
			case "3":
				menuErakutsi("default", konexioa);
				break;
			case "4":
				menuErakutsi("default", konexioa);
				break;
			case "5":
				menuErakutsi("default", konexioa);
				break;
			case "6":
				menuErakutsi("default", konexioa);
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
                System.out.println("1: ");
                System.out.println("2: Sarrera itzuli");
                System.out.println("3: Playlista izenez aldatu");
                System.out.println("4: Sarreren prezioa aldatu");
                System.out.println("Back: Atzera");
                System.out.println("Exit: Itxi");
                menuErakutsi(sc.nextLine(), konexioa);
				break;
		}
	}
}
