<%@page import="model.Contato"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Novo contato</title>
</head>
<body>
	<%
		Contato contato = (Contato) request.getAttribute("contato");
	%>
	Novo contato
	<%=contato.getNome()%>
	<br>
	<%=contato.getEmail()%>
	<br>
	<%=contato.getTelefone()%>
	<br>
	<%=contato.getSenha()%>
	<br>
	<%=contato.getPais()%>
	<br>
	Realizado com sucesso!

</body>
</html>