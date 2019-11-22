<!DOCTYPE html>
<%@page import="model.Contato"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="UTF-8">
<title>Teste parametros</title>
</head>
<body>

<% Contato contato = (Contato) request.getAttribute("contato"); %>

	<form action="/desenv-web/alterar-contato-de-fato" method="GET">
		Nome: <input type="text" name="nome" value="<%= contato.getNome() %>"/>
		<br>
		Email: <input type="email" name="email" value="<%= contato.getEmail() %>"/>
		<br>
		<input type="hidden" name="id" value="<%= contato.getId() %>"/>
		<br><br>
		<input type="submit" value="Confirmar">
	</form>
</body>
</html>