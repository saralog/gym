<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="stile.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aggiungi Nuovo Iscritto</title>
<script type="text/javascript">
var tessera="";
function controllacampi() {
	for(f=0;f<document.forms[0].length-3;f++){
    var x = document.forms[0][f].value;
    //if(f>=0&&f<=2){tessera=tessera+x.substr(0,1);}
    if (x == "") {
       // alert("Name must be filled out");
        document.getElementById("controllo").innerHTML="<center>Il form che tenti di inviare <br> è incompleto<br>Inserisci "+document.forms[0][f].name+"</center>";
       // document.forms[0][f].focus();
       // tessera="";
        return false;
    }
   else if(x!=""){document.forms[0][f].value=x.toUpperCase();}
	}  
	tessera=document.forms[0][0].value.substr(0,1)+document.forms[0][1].value.substr(0,1)+document.forms[0][2].value.substr(0,1);
	var numerotessera=document.getElementById("anni").value * document.getElementById("peso").value
	document.getElementById("tessera").value=tessera+numerotessera;
} 
function attivadieta()
{
	var elementodieta=document.getElementById("dieta");
	var tipoiscritto=document.getElementById("tipo");
	

	if (tipoiscritto.value=="DILETTANTE"){
		elementodieta.value="VARIA";
		elementodieta.readOnly=true;}
	else if(tipoiscritto.value=="AGONISTA"){
		elementodieta.value="";
		elementodieta.readOnly=false;}
	}
</script>
</head>
<body >
<center>
<p class="titolo">Scheda nuovo iscritto</p>
<p class="istruzione">Compila la scheda del nuovo iscritto</p>
<table>
<tr><td>
<form action="schedainserimentoconfoto.jsp" name="inserimentoiscritto" onsubmit="return controllacampi()">
  Nome:<br>
  <input type="text" name="nome">
  <br>
  Corso<br>
  <select name="corso">
    <option value=""></option>
    <option value="THAICHI">THAICHI</option>
    <option value="ATLETICA">ATLETICA</option>
    <option value="PARKOUR">PARKOUR</option>
    <option value="SKATEBOARD">SKATEBOARD</option>
  </select>
<!--   <input type="text" name="corso">
 -->  <br>
  Tipo<br>
  <select name="tipo" id="tipo" onchange="attivadieta()">
    <option value="DILETTANTE">Dilettante</option>
    <option value="AGONISTA">Agonista</option>
    </select>
 <!--  <input id="tipo" type="radio" name="tipo" value="AGONISTA" onclick="attivadieta()"> Agonista
   <input id="tipo" type="radio" name="tipo" value="DILETTANTE"  onclick="attivadieta()"> Dilettante
 -->
  <br>  
 Dieta<br>
  <input id="dieta" type="text" name="dieta" value="VARIA" readonly>
  <br>
 Anni<br>
  <input type="text" name="anni" id="anni">
  <br>
 Peso<br>
  <input type="text" name="peso" id="peso">
  <br>
 Altezza<br>
  <input type="text" name="altezza">
   <input id="tessera" type="hidden" name="tessera">
         <br><br>
         <input class="button" type = "submit" value = "Registra Nuovo Iscritto" onclick='controllacampi()'/>
         <input class="button exit" type="button" value="Annulla" onclick='window.location.assign("index.html")'>
</form> 
</td>

<td><p class="avviso" id="controllo"></p></td></tr>
  </table>
  </center>
</body>
</html>