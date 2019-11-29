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
           Conteudo
      </div>
      <footer style="background: #bbb"><center>Deloped by Zika Inc.</center></footer>
    </body>
</html>