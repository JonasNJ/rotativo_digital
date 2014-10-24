<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	session.setAttribute("tela", "LOGIN ");
	session.setAttribute("acao", "LOGIN");
	String retorno=(application.getAttribute("retorno")!=null)?(String) application.getAttribute("retorno"):" ";
	String action= "LoginWebServlet";
	String controle ="1";
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%  session.setAttribute("sistema", "Projeto: Rotativo Digital De Estacionamento Urbano");%>
<title><%=(String) session.getAttribute("sistema")%></title>

<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link href="CSS/estilo.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="JSP/PADRAO/cabecalho.jsp"></jsp:include>
<div class="central">
      <div id="loginQuadro">
            <form name="loginForm" method="POST" action="<%=action%>">
              <table align="center" >
                <tr>
                  <td width="91"><strong>Nome </strong></td>
                  <td width="174"><input type="text" name="username" size="25"></td>
                </tr>
                <tr>
                  <td><strong>Senha </strong></td>
                  <td><input type="password" size="25" name="password"></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><input type="submit" value="Enviar"/></td>
                </tr>
              </table>
            </form>
      </div>
</div>
<jsp:include page="JSP/PADRAO/rodape.jsp"></jsp:include>
</body>
</html>