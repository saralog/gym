<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="palestra.ModificaFile"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="stile.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Utente inserito</title>
</head>
<body style="text-align:center; text-valign:middle">
<%
String nomeNI=request.getParameter("nome");
String corsoNI=request.getParameter("corso");
String tipoNI=request.getParameter("tipo");

String tesseraNI=request.getParameter("tessera");
String dietaNI=request.getParameter("dieta");
//System.out.println("numero di tessera  "+tesseraNI);

int anniNI=Integer.parseInt(request.getParameter("anni"));
double pesoNI=Double.parseDouble(request.getParameter("peso"));
double altezzaNI=Double.parseDouble(request.getParameter("altezza"));
String dascrivere= nomeNI+"£"+corsoNI+"£"+tipoNI+"£"+tesseraNI+"£"+dietaNI+"£"+anniNI+"£"+pesoNI+"£"+altezzaNI;
ServletContext context = pageContext.getServletContext();

String indirizzocartella ="C:\\Users\\sergiolog\\eclipse-workspace\\palestra\\WebContent\\schede";
ModificaFile modificaiscritto=new ModificaFile(tesseraNI,dascrivere,indirizzocartella);
modificaiscritto.modschedasingola(tesseraNI,dascrivere,indirizzocartella);
//String nomeNuovoIscritto= nuovoiscritto.NomeIP;
//String corsoNuovoIscritto=nuovoiscritto.CorsoIP;
//System.out.println(nuovoiscritto);
//String tesseraNuovoIscritto=nuovoiscritto.TesseraIP;
%>
	<font face="courier" size="100px">
	Benvenuto <%= nomeNI %><br>
	Hai scelto il corso <%= corsoNI%><br>
	Il tuo numero di tessera è rimasto invariato <%=tesseraNI %> <br>
	</font>
	<br>
	
<br>
<br>
<br>
<table cellspacing="3" cellpadding="3" width="600">
	<tr>
		<td  bgcolor="#3CBC8D" ><a href="schedaiscritto.jsp?tessera=<%= tesseraNI %>.txt"> Visualizza scheda</a></td>
		<td  bgcolor="#3CBC8D" ><a href="elencoIP.jsp">Lista Iscritti</a></td>
		<td  bgcolor="#3CBC8D" ><a href="index.html">°HOME.</a></td>
		
		</tr>
	</table>
</body>
</html>