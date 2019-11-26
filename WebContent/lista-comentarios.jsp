<%@page import="model.Comentario"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista comentarios</title>
	</head>
	<body>
		<h1>Lista comentarios</h1>

	<table>
		<tr>
			<th>Comentario</th>
		</tr>
		<c:forEach items="${comentarios}" var="comentario">
		<tr>
			<td>${comentario.comentario}</td>
		</tr>
		</c:forEach>
	</table>
	</body>
</html>