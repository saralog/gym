<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="palestra.persona"%>
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
int anniNI=Integer.parseInt(request.getParameter("anni"));
double pesoNI=Double.parseDouble(request.getParameter("peso"));
double altezzaNI=Double.parseDouble(request.getParameter("altezza"));

persona nuovoiscritto=new persona(nomeNI,corsoNI,tipoNI,tesseraNI,dietaNI,anniNI,pesoNI,altezzaNI);
String nomeNuovoIscritto= nuovoiscritto.NomeIP;
String corsoNuovoIscritto=nuovoiscritto.CorsoIP;
//System.out.println(nuovoiscritto);
String tesseraNuovoIscritto=nuovoiscritto.TesseraIP;
%>
	<font face="courier" size="100px">
	Benvenuto <%=nomeNuovoIscritto %><br>
	Hai scelto il corso <%= corsoNuovoIscritto%><br>
	Il tuo numero di tessera � <%=tesseraNuovoIscritto %><br>
	</font>
	<br>
<br>
<br>
<br>
<table cellspacing="3" cellpadding="3" width="600">
	<tr>
		<td  bgcolor="#3CBC8D" ><a href="index.html">�home.</a></td>
		<td  bgcolor="#3CBC8D" ><a href="elencoIP.jsp">Lista Iscritti</a></td>
		<% String hrefMI="formUpload.jsp?tessera="+tesseraNI;%> 
		<td  bgcolor="#3CBC8D" ><a href="<%=hrefMI%>">Modifica immagine</a></td>
		
		</tr>
	</table>
</body>
</html>