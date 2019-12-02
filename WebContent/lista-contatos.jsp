<%@page import="model.Contato"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CSS Template</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="estilo.css" >
        <link rel="stylesheet" href="li.css" >
    </head>
    <body>
     <div class="navbar">
        <img src="pics/tellme.png " style="width:5.5%" alt="Logo">
        <li><a href="#home">Home</a></li>
        <li><a href="#news">News</a></li>
        <li><a href="#contact">Contact</a></li>
        <li><a href="/desenv-web/lista-contatos">Lista Usuários</a></li>
       	<li><a href="/desenv-web/novo-contato.html">Cadastrar Usuários</a></li>
        <li style="float:right"><a class="active" href="/desenv-web/invalidate-session">Logout</a></li>
    </div> 
    <div class="row" >
        <div class="navba2">
            <li><a href="#home">-</a></li>
        </div>
        <div class="column side" style="background-color:white;"  box-shadow: 10px 10px 5px grey >
        <div class="div up">
            <div style="color: black">
                <h2>Administrador</h2>
            </div>
           
            <div class="menu2" >
                <li4><a href="#home"><img src="pics/music.png" style="width: 6%" alt="Music">   Musicas</a></li4>
                <li4><a href="#home"><img src="pics/series.png" style="width: 6%" alt="Serie">  Series</a></li4>
                <li4><a href="#home"><img src="pics/filmes.png" style="width: 6%" alt="Filme">  Filmes</a></li4>
                <div class="separador"></div>
                <h4><img src="pics/favoritos.png" style="width: 7%" alt="Fav">  Favoritos</h4>
              </div>
          </div>

        </div>

        <div class="column middle" style="background-color: whitesmoke;">
	
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
	
      </div>
    </body>
</html>