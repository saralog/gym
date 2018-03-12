<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Caricamento file</title>
</head>
<body>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>

<%
   File file ; 
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   ServletContext context = pageContext.getServletContext();
   String filePath = context.getInitParameter("file-upload");
   String tesseraiscritto=request.getParameter("tessera");
   //---System.out.println(filePath);
   //filePath="\\"+filePath;

   // Verify the content type
   String contentType = request.getContentType();
   
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("c:\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      
      try { 
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();

         out.println("<html>");
         out.println("<head>");
         out.println("<link rel='stylesheet' type='text/css' href='stile.css'>");  
         out.println("<title>JSP File upload</title>");  
         out.println("</head>");
         out.println("<body>");
         
         
         while ( i.hasNext () ) {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () ) {
               // Get the uploaded file parameters
               String fieldName = fi.getFieldName();
               String fileName = fi.getName();
               boolean isInMemory = fi.isInMemory();
               long sizeInBytes = fi.getSize();
             //  System.out.println("che?"+ filePath + "\\"+
                     //  Controlla se il file già esiste
               File modificaimg= new File (filePath + "\\"+tesseraiscritto+".jpg");
               if(modificaimg.exists()){modificaimg.delete();}
               // Write the file
               if( fileName.lastIndexOf("\\") >= 0 ) {
                  file = new File( filePath + "\\"+
                  fileName.substring( fileName.lastIndexOf("\\"))) ;
               } else {
                  file = new File( filePath + "\\"+
                  fileName.substring(fileName.lastIndexOf("\\")+1)) ;
               }

               fi.write( file ) ;
               File filevecchio=new File(filePath + "\\"+fileName);
               File rinominato= new File(filePath + "\\"+tesseraiscritto+".jpg");
               filevecchio.renameTo(rinominato);
               
               out.println("<center><p class='titolo'>Aggiornamento foto iscritto effettuato!</p></center>");
            }
         }
        out.println("<a href='index.html'>Home</a>");
       
        out.println("<table><tr><td  bgcolor='#3CBC8D' ><a href='schedaiscritto.jsp?tessera="+tesseraiscritto+".txt'>Visualizza scheda</a></td>");
        out.println("<td  bgcolor='#3CBC8D' ><a href='elencoIP.jsp'>Lista Iscritti</a></td>");	
		out.println("</tr></table>");    	
         out.println("</body>");
         out.println("</html>");
      } catch(Exception ex) {
         System.out.println(ex);
      }
   } else {
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }
%>
</body>
</html>