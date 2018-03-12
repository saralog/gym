<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="palestra.persona,palestra.elenchi,java.lang.NullPointerException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <link rel="stylesheet" type="text/css" href="stile.css">
 -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Elenco Iscritti</title>
<style>
/* unvisited link */
a:link {
    color: #ff0077;
}

/* visited link */
a:visited {
    color: #ff0077;
}

/* mouse over link */
a:hover {
    color: #ff0077;
}

/* selected link */
a:active {
    color: #ff0077;
}
table {
    border-collapse: collapse;
    width: 100%;
    text-align: left;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
tr:hover {background-color:#f5f5f5;} 
</style>
</head>
<body>
<%@ page import = "java.io.*"%>
<table width="100%" style="font-family:courier;font-size:85px; font-weight: bold; color:#000000">
	<tr><td colspan="2" width="60%" >Elenco Iscritti</td>
	<td >
		<table width="100%"style="font-family:courier;font-size:12px; font-weight: bold; color:#ffffff" bgcolor="#f5f5f5">
		<tr><td><a href="cerca.jsp?tessera=DILETTANTE">dilettanti</a></td>
		<td><a href="cerca.jsp?tessera=AGONISTA">agonisti</a></td>
		<td><a href="index.html">°HOME.</a></td>
		<td><form name="form1" action="cerca.jsp"><input name="tessera">
			<input class="button" id="Submit" type="submit" value="Cerca" ></form></td>
		
		</tr>
		</table>
	</td></tr>
	<tr style="font-family:courier;font-size:50px;  color:#000000"><td colspan="3">Seleziona un iscritto dalla lista<br>per visualizzarne la scheda</td></tr>

<%
int yyy=0;
double zzz=0;
elenchi iscritti=new elenchi();
yyy=iscritti.strDays.length;
//elencopersone.creaelenco();
String nome;
String corso;
String tipo;
String tessera;
String dieta;

int anni;
double peso;
double altezza;

for(int a=0;a<iscritti.strDays.length;a++)
{
	String[] scrivere=iscritti.strDays[a].split("£");
	String indirizzoimmagine="imgscheda\\"+scrivere[3]+".jpg";
	File f = new File("C:\\Users\\sergiolog\\eclipse-workspace\\palestra\\WebContent\\"+indirizzoimmagine);
	String imgdef;
	if(f.exists()){imgdef=indirizzoimmagine;}
	else{imgdef="imgscheda\\noimg.jpg";}
	%>
	
	<tr style="font-family:verdana;font-size:11px; font-weight: bold; color:#ff0033; align:left"><td width="10%"  ><img src="<%=imgdef%>" width="50" height="50"></td><td width="*" align="left"><a href="schedaiscritto.jsp?tessera=<%=scrivere[3]%>.txt"><%=nome=scrivere[0] %></a></td></tr>
<%
}
%>
	<tr><td>
		</td>
		<td></td>
		<td>
		</td></tr>
</table>
 
 
</body>
</html>