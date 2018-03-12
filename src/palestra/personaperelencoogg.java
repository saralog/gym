package palestra;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
public class personaperelencoogg {
	public String NomeIP;
	public String CorsoIP;
	public String TesseraIP;
	public String TipoIP;
	public String DietaIP;
	public int AnniIP;
	public double PesoIP;
	public double AltezzaIP;
	public ArrayList <personaperelencoogg> elencoIP ;
	public List stringadascrivere;

	public personaperelencoogg(String nome,String corso, String tipo,String tessera,String dieta,int anni,double peso,double altezza) {

		
		String Nome=nome;
		String Corso=corso;
		String Tipo=tipo;
		String Tessera=tessera;
		String Dieta=dieta;
		int Anni=anni;
		double Peso=peso;
		double Altezza=altezza;
		this.pubblicavar(Nome,Corso,Tipo,Tessera,Dieta,Anni,Peso,Altezza);
	//	this.aggiungipersona();
	
		//elencoIP.add(this);
		/*
		
		
		
		
		String nome,String corso,String tipo,String tessera,String dieta,int anni,double peso,double altezza*/
		
	}
	public void pubblicavar(String n,String c,String tp,String t,String d,int a,double p,double al) {
		NomeIP=n;
		CorsoIP=c;
		TesseraIP=t;
		TipoIP=tp;
		DietaIP=d;
		AnniIP=a;
		PesoIP=p;
		AltezzaIP=al;
		
	}
	//
	//Se il file gia' esiste e voglio solo modificarlo o scrivergli in coda
	//al posto del FileOutputStream indicato qui sotto uso:
	//FileOutputStream fos=new FileOutputStream(f,true);
	
	
	
	
	public void aggiungipersona() {
		String path = "C:\\Users\\sergiolog\\eclipse-workspace\\palestra\\WebContent\\schede\\"+TesseraIP+".txt";
		String dascrivere=NomeIP+"£"+CorsoIP+"£"+TipoIP+"£"+TesseraIP+"£"+DietaIP+"£"+AnniIP+"£"+PesoIP+"£"+AltezzaIP;
   try {
	   File f=new File("C:\\Users\\sergiolog\\eclipse-workspace\\palestra\\WebContent\\schede\\elenco.txt");
	   
	   FileOutputStream fos=new FileOutputStream(f,true);
	   PrintStream ps=new PrintStream(fos);
	   ps.println(dascrivere);
       File file = new File(path);
       FileWriter fw = new FileWriter(file);
       BufferedWriter bw = new BufferedWriter(fw);
       bw.write(dascrivere);
       bw.flush();
       bw.close();
       ps.close();
   }
   catch(IOException e) {
       e.printStackTrace();
   }
		
		
	}
	
	
}
