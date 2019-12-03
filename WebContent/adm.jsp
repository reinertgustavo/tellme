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
        <li><a href="/desenv-web/novo-contato.jsp">Cadastrar Usuários</a></li>
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
			<p> 
           		<h3 class="post10"> Curtidas </h3>
                <a><img id="IMG40" src="pics/curtidas.png" style="width: 100% height: 100%">
           	</p>
            <div class="separador2"></div>
            <!--Post 2-->
            <div class="separador2"></div>
            <p>
                <h3 class="post3"> Top Netflix </h3>
                <ul>
                  <br> <li>"The Office"</li>
                  <br><li>"Friends"</li>
                  <br><li>"Grey’s Anatomy"</li> 
                  <br> <li>"NCIS"</li>
                  <br> <li>"Criminal Minds"</li>
                  <br> <li>"Shameless"</li>
                  <br><li>"Orange is the New Black"</li> 
                  <br> <li>"Supernatural'</li>
                  <br><li>"Parks and Recreation"</li>
                  <br><li>"Ozark"</li>
                </ul> 
            </p>
      </div>
    </body>
</html>