<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
GregorianCalendar calendar =new GregorianCalendar();
SimpleDateFormat  formataData=new SimpleDateFormat("dd/MM/yyyy");
SimpleDateFormat  formataHora=new SimpleDateFormat("hh:mm:ss");

Date date= calendar.getTime();
String dataAtual = formataData.format(date);
String horaAtual = formataHora.format(date);
%>




<br><br>
<table width="80%" bgcolor="lightblue" align="center">
<tr><small><td width="34%">Usuario: %%%</td>
<td width="33%" align="center">Data: <%=dataAtual %></td>
<td align="right">Hora:<%=horaAtual %></td></small>
</tr></table>
