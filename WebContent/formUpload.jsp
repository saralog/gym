<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="stile.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
 <p class="titolo">immagine attualmente associata all 'iscritto selezionato</p>
 <% 
 String tessera=request.getParameter("tessera");
 String img=request.getParameter("img");
 String indirizzo;
if(img!="imgscheda\\noimg.jpg") 
	{indirizzo="imgscheda\\"+img;}
else{indirizzo="imgscheda\\noimg.jpg";}
 String formaction="UploadFile.jsp?tessera="+tessera;%>
 <img src="<%=indirizzo%>" width="150" height="150">
 <p class="titolo">seleziona una nuova immagine</p>
 <form action ="<%=formaction %>"  method = "post"
         enctype = "multipart/form-data">
         <input type = "file" name = "file" size = "50" />
         <br />
         <input type = "submit" value = "Aggiorna foto" />
      </form>
      </center>
</body>
</html>