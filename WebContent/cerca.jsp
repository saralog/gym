<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="palestra.elenchi" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ricerca <%=request.getParameter("tessera").toUpperCase() %></title>
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
    
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
tr:hover {background-color:#f5f5f5;} 
</style>
</head>
<body style="font-family:courier;font-size:50px; font-weight: bold; color:#000000"><center>
Iscritti trovati secondo il parametro di ricerca impostato <%=request.getParameter("tessera") %><br>
<table>
<% elenchi cercaelenco =new elenchi();
int cre=0;
for(int a=0;a<cercaelenco.strDays.length;a++){
	if(cercaelenco.strDays[a].contains(request.getParameter("tessera").toUpperCase())){
		cre=cre+1;
		String[] scrivere=cercaelenco.strDays[a].split("£");
%>
<tr><td><a href="schedaiscritto.jsp?tessera=<%=scrivere[3]%>.txt"><%=scrivere[0] %></a></td></tr>
<%
	}
}
if(cre==0){%>
0 iscritti
<%} %><br></table><a href="index.html">°HOME.</a></center>

</body>
</html>