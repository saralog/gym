package palestra;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.*;

public class elenchi {
	//public List stringadascrivere;
	public ArrayList<String> elencoIP=new ArrayList<String>() ;
	public String[] strDays;
	public elenchi() {
		 try {
				FileReader reader0 = new FileReader ("C:\\Users\\sergiolog\\eclipse-workspace\\palestra\\WebContent\\schede\\elenco.txt");
				BufferedReader in0 = new BufferedReader(reader0);
				String cc=in0.readLine();
				ArrayList <String> elenco=new ArrayList <String>();
					while(cc!=null) {
						String[] linea=cc.split("£");
						//String nome =linea[0];

						//this.elencoIP.add(linea);
						//System.out.println(cc + linea);
						/*elencoIP.add(linea);
							String nome =linea[0];
							String corso =linea[1];
							String tipo =linea[2];
							int anni=Integer.parseInt(linea[5]);
							String tessera =linea[3];
							String dieta =linea[4];
							Double peso=Double.parseDouble(linea[6]);
							Double altezza=Double.parseDouble(linea[7]);	
							persona per=new persona(nome,corso,tipo,tessera,dieta,anni,peso,altezza);
							this.elencoIP.add(per);*/
						//	String nome,String corso, String tipo,String tessera,String dieta,int anni,double peso,double altezza
						elenco.add(cc);	
						cc=in0.readLine();
							//System.out.println(elenco);
						
					}
					this.publicvar(elenco);
					in0.close();
				}
				   catch(IOException e) {
				       e.printStackTrace();
				   }
	}
	public void publicvar(ArrayList <String> c) {
		elencoIP=c;
        Object[] objDays = elencoIP.toArray();
        strDays = Arrays.copyOf(objDays, objDays.length, String[].class);
      /*  for(int i=0; i < strDays.length; i++){
            System.out.println(strDays[i]);
			String[] linea=strDays[i].split("£");
			String nome =linea[0];
			String corso =linea[1];
			String tipo =linea[2];
			int anni=Integer.parseInt(linea[5]);
			String tessera =linea[3];
			String dieta =linea[4];
			Double peso=Double.parseDouble(linea[6]);
			Double altezza=Double.parseDouble(linea[7]);	

            
    }*/
	}
}
