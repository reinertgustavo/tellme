<%@page import="model.Comentario"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista Comentario</title>
	</head>
	<body>
		<h1>Lista Comentario</h1>

	<table>
		<tr>
			<th>Nome</th>
			<th>Comentario</th>
		</tr>
		<c:forEach items="${comentarios}" var="comentarios">
		<tr>
			<td>${comentario.nome}</td>
			<td>${comentario.comentario}</td>
		</tr>
		</c:forEach>
	</table>
	</body>
</html>