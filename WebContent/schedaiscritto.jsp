<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="palestra.scheda"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="stile.css">

<style>

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scheda personale</title>
</head>
<body>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%String cerca=request.getParameter("tessera");
scheda sched=new scheda(cerca);
String[] definizioni=new String[8];
definizioni[0]="nome";
definizioni[1]="corso";
definizioni[2]="tipo";
definizioni[3]="tessera";
definizioni[4]="dieta";

definizioni[5]="anni";
definizioni[6]="peso";
definizioni[7]="altezza";
String indirizzoimmagine="imgscheda\\"+sched.stampascheda[3]+".jpg";
File f = new File("C:\\Users\\sergiolog\\eclipse-workspace\\palestra\\WebContent\\"+indirizzoimmagine);
String imgdef;

//System.out.println("trovato?"+ f.exists());
if(f.exists()){imgdef=indirizzoimmagine;}else{imgdef="imgscheda\\noimg.jpg";}
%>
<font face="courier" size="30px">Scheda di </font><font size="100px"><%=sched.stampascheda[0]%></font><br> 
	<font face="courier" size="30px">Partecipa al corso di </font><font size="100px"><%=sched.stampascheda[1]%></font><br>
	<font face="courier" size="30px">N° tessera  </font><font size="100px"><%=sched.stampascheda[3]%></font>
	<table cellspacing="3" cellpadding="3" width="600">
	<tr>
		
		<td  bgcolor="#3CBC8D" ><a href="elencoIP.jsp">Lista Iscritti</a></td>
		<% String hrefMI="formUpload.jsp?tessera="+sched.stampascheda[3]+"&img="+imgdef.substring(10);%> 
		
		<td  bgcolor="#3CBC8D" ><a href="formmodificainserimento.jsp?tessera=<%=sched.stampascheda[3] %>">Modifica dati</a></td>
		<td  bgcolor="#3CBC8D" ><a href="<%=hrefMI%>">Modifica immagine</a></td>
		<td  bgcolor="#3CBC8D" ><a href="index.html">Elimina Iscritto</a></td>
		</tr>
	</table>
<table width="600">
	<tr>
	<td>
	<table>
		
		<tr><td>Tipo di iscritto</td><td><%=sched.stampascheda[2]%></td></tr>
		
		<tr><td>Dieta</td><td><%=sched.stampascheda[4]%></td></tr>
		<tr><td>anni</td><td><%=sched.stampascheda[5]%></td></tr>
		<tr><td>peso</td><td><%=sched.stampascheda[6]%></td></tr>
		<tr><td>altezza</td><td><%=sched.stampascheda[7]%></td></tr>
	</table>
	</td>
	<td>
	<%
		if(imgdef.equals("imgscheda\\noimg.jpg"))
		{ 
			String href="formUpload.jsp?tessera="+sched.stampascheda[3];
	%>
	<a href="<%=href%>"><img alt="" src="<%=imgdef %>"></a>
	<%}else{ %>
	<img alt="" src="<%=imgdef %>" width="250" height="250">
	<%} %>
	</td>	
	</tr>
</table>
</body>
</html>