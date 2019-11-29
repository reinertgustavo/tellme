<%@page import="model.Contato"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista contatos</title>
	</head>
	<body>
		<h1>Lista contatos</h1>

	<table>
		<tr>
			<th>Nome</th>
			<th>E-mail</th>
			<th>País</th>
		</tr>
		<c:forEach items="${contatos}" var="contato">
		<tr>
			<td>${contato.nome}</td>
			<td>${contato.email}</td>
			<td>${contato.getDescricaoPais()}</td>
			<td><a href="excluir-contato?id=${contato.id}">Excluir</a>
			<a href="alterar-contato?id=${contato.id}">Alterar</a></td>
		</tr>
		</c:forEach>
	</table>
	</body>
</html>