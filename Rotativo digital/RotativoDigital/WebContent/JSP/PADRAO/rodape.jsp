<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
GregorianCalendar calendar =new GregorianCalendar();
SimpleDateFormat  formataData=new SimpleDateFormat("dd/MM/yyyy");
SimpleDateFormat  formataHora=new SimpleDateFormat("hh:mm");

Date date= calendar.getTime();
String dataAtual = formataData.format(date);
String horaAtual = formataHora.format(date);
%>



<div class="rodape">

<table class="tlogin" >
    <tr>
    <td  align="left"><strong>TRABALHO INTERDISCIPLINAR DIRIGIDO IV</strong><br/>INSTITUTO POLIT�CNICO - Centro Universit�rio UNA<br/>Sistema de Informa��es<br/>4o Periodo - Noite<br/></td>
    <td  align="left"><strong>GRUPO:</strong><br/>Daniel S�ngelo<br/>Geraldo dos Anjos<br/>Jonas Nogueira Junqueira<br/>Jonathan Franco<br/>Marcelo Dias <br/>Rodolpho Torres.<br/></td>
    <td  align="left">Professor TIDIR Orientador:<br/><strong> Rafael Pinheiro Amante�</strong><br/>&nbsp;<br/>Professores Co-orientadores: <br/>Alexandre Siqueira Dias<br/>Cristiano De Macedo Neto<br/>Elson De Abreu Rocha Junior <br/>Luiz Guilherme Hilel Drumond Silveira<br/></td>
    <td  width="40%" align="right">Data: <%=dataAtual %><br/>Hora:<%=horaAtual %></td>
    </tr>
</table>
</div>