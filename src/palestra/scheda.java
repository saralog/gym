package palestra;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class scheda{
	String[] scheda;
	public String[] stampascheda;
	
	public scheda(String c) {
		try {
			FileReader reader0 = new FileReader ("C:\\Users\\sergiolog\\eclipse-workspace\\palestra\\WebContent\\schede\\"+c);
			BufferedReader in0 = new BufferedReader(reader0);
			String cc=in0.readLine();
			scheda = cc.split("£");
			this.pubbvar(scheda);
			in0.close();

		}    catch(IOException e) {
		       e.printStackTrace();
		   }
	}
	public void pubbvar ( String[] notizie) {stampascheda=notizie;}
}
