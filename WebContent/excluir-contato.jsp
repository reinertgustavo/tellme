<%@page import="model.Contato"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exclui contato</title>
</head>
<body>
<% Contato contato = (Contato) request.getAttribute("contato"); %>
Contato excluido com sucesso!
</body>
</html>