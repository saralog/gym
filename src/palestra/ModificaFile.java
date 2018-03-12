package palestra;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.File;
 
public class ModificaFile {
   public ModificaFile(String tesseranum,String dascrivere, String cartellaschedeindiv) {
  //  FileInputStream foglioscheda = null;
      FileInputStream fstream = null; 
      DataInputStream in = null;
      BufferedWriter out = null;
    
      try { 
    	  //foglioscheda= new FileInputStream(cartellaschedeindiv+tesseranum+".txt");
    	  
         // apro il file
         fstream = new FileInputStream("C:\\Users\\sergiolog\\eclipse-workspace\\palestra\\WebContent\\schede\\elenco.txt");
     
         // prendo l'inputStream
         in = new DataInputStream(fstream);
         BufferedReader br = new BufferedReader(new InputStreamReader(in));
         String strLine;
         StringBuilder fileContent = new StringBuilder();
     
         // Leggo il file riga per riga
         while ((strLine = br.readLine()) != null) {
           // System.out.println(strLine); // stampo sulla console la riga corrispondente
      
            if(strLine.contains(tesseranum)){
            	
            	
				//String[] linea=strLine.split("£");
               // se la riga è uguale a quella ricercata
               fileContent.append(dascrivere+System.getProperty("line.separator"));
               
            } else {
               // ... altrimenti la trascrivo così com'è
               fileContent.append(strLine);
               fileContent.append(System.getProperty("line.separator"));
            }
         }
  
         // Sovrascrivo il file con il nuovo contenuto (aggiornato)
         FileWriter fstreamWrite = new FileWriter("C:\\Users\\sergiolog\\eclipse-workspace\\palestra\\WebContent\\schede\\elenco.txt");
         out = new BufferedWriter(fstreamWrite);
         out.write(fileContent.toString());
     
      } catch (Exception e) {
         e.printStackTrace();
 
      } finally {
         // chiusura dell'output e dell'input
         try {
        	
             fstream.close();
            out.flush();
            out.close();
            in.close();
         } catch (IOException e) {
            e.printStackTrace();
         }
      }
   }
   public void modschedasingola(String tesseranum1,String dascrivere1, String cartellaschedeindiv1)  {
	   File fold=new File(cartellaschedeindiv1+"\\"+tesseranum1+".txt");
	   fold.delete();
	   File fnew=new File(cartellaschedeindiv1+"\\"+tesseranum1+".txt");
	
	   try {
	       FileWriter f2 = new FileWriter(fnew);
	       f2.write(dascrivere1);
	       f2.close();
	   } catch (IOException e) {
	       e.printStackTrace();
	   }           }
}